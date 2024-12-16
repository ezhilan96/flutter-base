import 'package:flutter/foundation.dart';

class AppEnv {
  static const String _env = String.fromEnvironment('ENV');
  static String get env {
    if (_env.isNotEmpty) {
      return _env;
    } else {
      return kReleaseMode ? 'prod' : 'uat';
    }
  }

  static String get baseUrl {
    switch (env) {
      case 'uat':
        return 'api.uat.flutter_base.com';
      case 'prod':
        return 'api.flutter_base.com';
      default:
        return 'api.uat.flutter_base.com';
    }
  }
}
