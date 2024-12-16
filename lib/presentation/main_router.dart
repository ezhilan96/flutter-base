import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home/dashboard/dashboard_screen.dart';
import 'screens/auth/login/login_screen.dart';
import 'screens/home/home_nav_host.dart';
import 'shared/nointernet_screen.dart';

final _mainNavKey = GlobalKey<NavigatorState>();
final _dashboardNavKey = GlobalKey<NavigatorState>();

final GoRouter mainRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _mainNavKey,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => Scaffold(
        body: Center(
          child: Image.asset('assets/images/png/splash.png'),
        ),
      ),
    ),
    GoRoute(
      path: '/noInternet',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: NoInternetScreen()),
    ),
    GoRoute(
      path: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: OtpScreen.routeName,
      //     builder: (context, state) => const OtpScreen(),
      //   ),
      //   GoRoute(
      //     path: '/createPassword',
      //     builder: (context, state) => PasswordScreen(isCreatePassword: true),
      //   ),
      //   GoRoute(
      //     path: '/password',
      //     builder: (context, state) => PasswordScreen(isCreatePassword: false),
      //     routes: [
      //       GoRoute(
      //         path: OtpScreen.routeName,
      //         builder: (context, state) => const OtpScreen(),
      //       ),
      //     ],
      //   ),
      // ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          HomeNavHost(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _dashboardNavKey,
          routes: [
            GoRoute(
              path: DashboardScreen.routeName,
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: DashboardScreen()),
            ),
          ],
        ),
        // StatefulShellBranch(
        //   navigatorKey: _settingNavKey,
        //   routes: <RouteBase>[
        //     GoRoute(
        //       path: SettingScreen.routeName,
        //       pageBuilder: (context, state) =>
        //           NoTransitionPage(child: const SettingScreen()),
        //     ),
        //   ],
        // ),
      ],
    ),
  ],
);
