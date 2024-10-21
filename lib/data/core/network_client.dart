import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LogInterceptorHttpClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (kDebugMode) {
      print('=> ${request.method} ${request.url}');
      print('Headers: ${request.headers}');
      print('RequestBody: ${(request as http.Request).body}');
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

class NetworkClient {
  NetworkClient({required this.baseUrl});

  final String baseUrl;
  String? token;

  final _client = LogInterceptorHttpClient();

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Uri uri = Uri.https(
        baseUrl,
        url,
        queryParameters,
      );
      final Map<String, String> headers = {};
      if (token != null) {
        headers['Authorization'] = token!;
      }
      return _client.get(uri, headers: headers);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(String path, {Object? body}) async {
    try {
      final Uri uri = Uri.https(
        baseUrl,
        path,
      );
      final Map<String, String> headers = {};
      if (token != null) {
        headers['Authorization'] = token!;
      }
      return _client.post(uri, body: body, headers: headers);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> patch(String path, {Object? body}) async {
    try {
      final Uri uri = Uri.https(
        baseUrl,
        path,
      );
      final Map<String, String> headers = {};
      if (token != null) {
        headers['Authorization'] = token!;
      }
      return _client.patch(uri, body: body, headers: headers);
    } catch (e) {
      rethrow;
    }
  }
}
