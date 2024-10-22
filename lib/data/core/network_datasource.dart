import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'network_client.dart';
import 'data_response.dart';
import 'utils.dart';

class NetworkDataSource {
  NetworkDataSource({
    required String baseUrl,
    Stream<String?>? token,
    this.onUnAuthorized,
  }) : networkClient = NetworkClient(baseUrl: baseUrl) {
    token?.listen((token) => networkClient.token = token);
  }

  Future<void> Function()? onUnAuthorized;

  @protected
  final NetworkClient networkClient;

  @protected
  Stream<DataResponse<T>> executeNetworkCall<T>(
    Future<Response> Function() call,
    T Function(Map<String, dynamic>) fromJson,
  ) async* {
    yield InProgress();
    try {
      final response = await call();
      final responseBody = response.body;
      if (response.statusCode == 200 || response.statusCode == 204) {
        final dynamic data =
            response.headers['content-type']?.contains('application/json') ==
                        true &&
                    responseBody.isNotEmpty
                ? fromJson(
                    Map<String, dynamic>.from(await json.decode(responseBody)))
                : responseBody;
        yield Success(data);
      } else {
        if (response.statusCode == 401) {
          onUnAuthorized?.call();
        }
        yield Error(parseErrorResponse(responseBody));
      }
    } catch (e) {
      yield Error();
    }
  }
}
