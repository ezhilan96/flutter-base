import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../../core/constants.dart';
import '../dto/response/error/error_dto.dart';
import 'data_response.dart';

class NetworkClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (kDebugMode) {
      print('=> ${request.method} ${request.url}');
      print('Headers: ${request.headers}');
      if (request is http.Request) {
        print('RequestBody: ${request.body}');
      } else if (request is http.MultipartRequest) {
        print('Multipart fields: ${request.fields}');
        print(
            'Multipart files: ${request.files.map((file) => file.filename).join(", ")}');
      }
    }

    final http.StreamedResponse response = await request.send();
    final bytes = await response.stream.toBytes();

    if (kDebugMode) {
      print('<= ${request.method} ${request.url}');
      print('StatusCode: ${response.statusCode}');
      print('ResponseBody: ${utf8.decode(bytes)}');
    }

    return StreamedResponse(
      ByteStream.fromBytes(bytes),
      response.statusCode,
      contentLength: response.contentLength,
      request: request,
      headers: response.headers,
      isRedirect: response.isRedirect,
      persistentConnection: response.persistentConnection,
      reasonPhrase: response.reasonPhrase,
    );
  }
}

class NetworkManager {
  NetworkManager({
    required String baseUrl,
    Stream<String?>? token,
    this.onUnAuthorized,
  }) : _baseUrl = baseUrl {
    token?.listen((token) => _token = token);
  }

  Future<void> Function()? onUnAuthorized;

  final NetworkClient _networkClient = NetworkClient();
  final String _baseUrl;
  String? _token;

  Uri _generateUri(String path, [Map<String, dynamic>? queryParameters]) =>
      Uri.https(_baseUrl, path, queryParameters);

  Map<String, String> _generateHeaders({bool isContentJson = true}) {
    final Map<String, String> headers = {};
    if (isContentJson) {
      headers['Content-Type'] = 'application/json';
    }
    if (_token != null) {
      headers['Authorization'] = '${KeyRes.bearer} ${_token!}';
    }
    return headers;
  }

  @protected
  Stream<DataResponse<Response>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) =>
      _handleNetworkCall(
        () => _networkClient.get(
          _generateUri(path, queryParameters),
          headers: _generateHeaders(isContentJson: false),
        ),
      );

  @protected
  Stream<DataResponse<Response>> post(
    String path, {
    Map<String, dynamic>? body,
  }) =>
      _handleNetworkCall(
        () => _networkClient.post(
          _generateUri(path),
          body: jsonEncode(body),
          headers: _generateHeaders(),
        ),
      );

  @protected
  Stream<DataResponse<Response>> patch(
    String path, {
    Map<String, dynamic>? body,
  }) =>
      _handleNetworkCall(
        () => _networkClient.patch(
          _generateUri(path),
          body: jsonEncode(body),
          headers: _generateHeaders(),
        ),
      );

  @protected
  Stream<DataResponse<Response>> uploadFile(String path, File imageFile) =>
      _handleNetworkCall(() async {
        final multipartFile =
            await http.MultipartFile.fromPath('image', imageFile.path);
        final request = http.MultipartRequest('POST', _generateUri(path))
          ..headers.addAll(_generateHeaders())
          ..files.add(multipartFile);
        return await http.Response.fromStream(
            await _networkClient.send(request));
      });

  Stream<DataResponse<Response>> _handleNetworkCall(
    Future<Response> Function() call,
  ) async* {
    yield InProgress();
    try {
      final Response response = await call();
      if (response.statusCode == 200 || response.statusCode == 204) {
        yield Success(response);
      } else {
        if (response.statusCode == 401) {
          onUnAuthorized?.call();
        }
        final String responseBody = response.body;
        yield Error(parseErrorResponse(responseBody));
      }
    } on HttpException catch (e) {
      yield Error(e.message);
    } on SocketException catch (e) {
      yield Error(e.message);
    }
  }
}

String parseErrorResponse(String responseBody) {
  try {
    return ErrorDto.fromJson(jsonDecode(responseBody) as Map<String, dynamic>)
        .error
        .message;
  } catch (e) {
    return StringRes.defaultError;
  }
}

extension StreamResponseExt on Stream<DataResponse<Response>> {
  Stream<DataResponse<T>> mapResponse<T>({
    T Function(Map<String, dynamic>)? fromJsonObject,
    T Function(String)? fromJsonList,
  }) async* {
    await for (final DataResponse<Response> response in this) {
      if (response is Success) {
        final responseBody = (response as Success<Response>).data.body;
        final isHeaderJson = response.data.headers['content-type']
                ?.contains('application/json') ??
            false;
        final dynamic data;
        if (isHeaderJson && responseBody.isNotEmpty) {
          final decodedResponse = await json.decode(responseBody);
          if (decodedResponse is List) {
            data = fromJsonList?.call(responseBody);
          } else {
            data = fromJsonObject?.call(json.decode(responseBody));
          }
        } else {
          data = responseBody.isEmpty ? null : responseBody;
        }
        yield Success(data);
      } else if (response is Error) {
        yield Error((response as Error<Response>).error);
      } else {
        yield InProgress();
      }
    }
  }
}
