import 'package:flutter_base/core/constants.dart';
import 'package:http/http.dart';

import 'utils.dart';

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
        headers['Authorization'] = '${KeyRes.bearer} ${token!}';
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
        headers['Authorization'] = '${KeyRes.bearer} ${token!}';
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
        headers['Authorization'] = '${KeyRes.bearer} ${token!}';
      }
      return _client.patch(uri, body: body, headers: headers);
    } catch (e) {
      rethrow;
    }
  }
}
