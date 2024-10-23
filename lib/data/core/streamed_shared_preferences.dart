import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StreamedSharedPreferences {
  SharedPreferences? _pref;
  final Map<String, StreamController<dynamic>> _controllers = {};

  @protected
  Stream<dynamic> observe(
    String key,
    dynamic Function(Map<String, dynamic> json) fromJson,
  ) async* {
    _pref ??= await SharedPreferences.getInstance();
    final controller =
        _controllers[key] ??= StreamController<dynamic>.broadcast();
    final json = _pref!.getString(key);
    json == null
        ? controller.add(null)
        : controller.add(fromJson(jsonDecode(json)));
    yield* controller.stream;
  }

  @protected
  Future<void> set(String key, Map<String, dynamic> json) async {
    _pref ??= await SharedPreferences.getInstance();
    _pref!.setString(key, jsonEncode(json));
    _controllers[key]?.add(json);
  }

  Future<void> clearPreferences() async {
    await _pref!.clear();
    for (var controller in _controllers.values) {
      controller.add(null);
    }
  }
}
