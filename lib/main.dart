import 'package:flutter/material.dart';
import 'package:flutter_base/presentation/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/di/injectable.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();
  runApp(const App());
}
