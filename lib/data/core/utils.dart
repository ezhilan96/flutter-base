import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../core/constants.dart';
import '../dto/response/error/error_dto.dart';
import 'data_response.dart';

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

String parseErrorResponse(String responseBody) {
  try {
    return ErrorDto.fromJson(responseBody as Map<String, dynamic>)
        .error
        .message;
  } catch (e) {
    return StringRes.defaultError;
  }
}

extension DataResponseExt<T> on DataResponse<T> {
  DataResponse<C> mapSuccess<C>(DataResponse<C> Function(T data) onSuccess) {
    if (this is Success) {
      return onSuccess.call((this as Success<T>).data);
    } else if (this is Error) {
      return Error<C>((this as Error<T>).error);
    } else {
      return InProgress<C>() as DataResponse<C>;
    }
  }

  C mapResponse<C>(
    C Function(T data) onSuccess,
    C Function(String error) onError,
    C Function() onLoading,
  ) {
    if (this is Success) {
      return onSuccess((this as Success).data);
    } else if (this is Error) {
      return onError((this as Error<T>).error);
    } else {
      return onLoading();
    }
  }
}

extension DataResponseStreamExt<T> on Stream<DataResponse<T>> {
  Stream<DataResponse<T>> also(void Function(T data) action) async* {
    await for (final DataResponse<T> response in this) {
      if (response is Success) {
        action((response as Success).data);
      }
      yield response;
    }
  }

  Stream<DataResponse<C>> mapSuccess<C>(
    C Function(T data) onSuccess,
  ) async* {
    await for (final DataResponse<T> response in this) {
      if (response is Success) {
        yield Success(onSuccess.call((response as Success).data));
      } else if (response is Error) {
        yield Error((response as Error<T>).error);
      } else {
        yield InProgress();
      }
    }
  }

  Stream<DataResponse<C>> chain<C>(
    Stream<DataResponse<C>> Function(T data) onSuccess,
  ) async* {
    await for (final DataResponse<T> response in this) {
      if (response is Success) {
        yield* onSuccess((response as Success).data);
      } else if (this is Error) {
        yield Error((response as Error<T>).error);
      } else {
        yield InProgress();
      }
    }
  }
}
