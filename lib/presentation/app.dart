import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../domain/entity/app_state.dart';
import 'screens/home/dashboard/dashboard_screen.dart';
import 'screens/auth/login/login_screen.dart';
import 'config/theme.dart';
import 'app_cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;
  static const platform = MethodChannel('com.flutter.base');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        theme: appTheme,
        builder: (context, child) {
          return BlocListener(
            listener: (context, state) {
              if (state is! Initial) {
                if (state is Authorized) {
                  _initApp(state.apiKey);
                } else if (state is UnAuthorized) {
                  FlutterNativeSplash.remove();
                  _navigator.pushAndRemoveUntil(
                    LoginScreen.route(),
                    (_) => false,
                  );
                } else if (state is Premium) {
                  FlutterNativeSplash.remove();
                  // Take action for premium users
                } else if (state is Block) {
                  FlutterNativeSplash.remove();
                  // Take action for blocked users
                } else if (state is ConfigError) {
                  FlutterNativeSplash.remove();
                  // Take action for config error
                } else if (state is ForceUpdate) {
                  FlutterNativeSplash.remove();
                  // Take action for force update
                }
              }
            },
            child: child,
          );
        },
        home: const SizedBox(),
      ),
    );
  }

  Future<void> _initApp(String apiKey) async {
    final requestData = {"googleApiKey": apiKey};
    platform.invokeMethod('setGoogleApiKey', requestData).then((value) {
      FlutterNativeSplash.remove();
      _navigator.pushAndRemoveUntil(
        DashboardScreen.route(),
        (_) => false,
      );
    });
  }
}
