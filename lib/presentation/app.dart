import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_router.dart';
import 'config/theme.dart';
import 'app_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        routerConfig: mainRouter,
        builder: (context, child) {
          return MultiBlocListener(
            listeners: [
              BlocListener(
                listenWhen: (previous, current) => true,
                listener: (context, state) {
                  // TODO: show no internet
                },
              ),
              BlocListener(
                listenWhen: (previous, current) => true,
                listener: (context, state) {
                  // TODO: navigate to Home or Logout to LoginScreen
                },
              ),
            ],
            child: child ?? Container(),
          );
        },
      ),
    );
  }

  // Future<void> _initApp(String apiKey) async {
  //   final requestData = {"googleApiKey": apiKey};
  //   MethodChannel('com.flutter.base')
  //       .invokeMethod('setGoogleApiKey', requestData)
  //       .then((value) {
  //     FlutterNativeSplash.remove();
  //     Navigator.pushAndRemoveUntil(
  //       DashboardScreen.route(),
  //       (_) => false,
  //     );
  //   });
  // }
}
