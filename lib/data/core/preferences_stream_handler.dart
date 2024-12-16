import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesStreamHandler {
  SharedPreferences? _pref;
  Future<SharedPreferences> _getSharedPreferences() async {
    _pref ??= await SharedPreferences.getInstance();
    return _pref!;
  }

  final Map<String, StreamController<dynamic>> _controllers = {};
  StreamController<dynamic> _getController(String key) {
    _controllers[key] ??= StreamController<dynamic>.broadcast();
    return _controllers[key]!;
  }

  @protected
  Future<dynamic> getPreference(String key) async {
    final sharedPref = await _getSharedPreferences();
    final data = sharedPref.get(key);
    return data;
  }

  @protected
  Stream<dynamic> getPreferenceStream(String key) async* {
    final controller = _getController(key);
    final data = await getPreference(key);
    yield data;
    yield* controller.stream;
  }

  @protected
  Future<void> setPreference({
    required String key,
    required dynamic data,
  }) async {
    final sharedPref = await _getSharedPreferences();
    if (data is String) {
      sharedPref.setString(key, data);
    } else if (data is bool) {
      sharedPref.setBool(key, data);
    } else if (data is int) {
      sharedPref.setInt(key, data);
    } else if (data is double) {
      sharedPref.setDouble(key, data);
    } else {
      return;
    }
    _getController(key).add(data);
  }

  Future<void> clearPreferences() async {
    final sharedPref = await _getSharedPreferences();
    await sharedPref.clear();
    for (var controller in _controllers.values) {
      controller.add(null);
    }
  }
}
