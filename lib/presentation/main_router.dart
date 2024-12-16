// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import 'config/color_scheme.dart';
// import 'screens/auth/login/login_screen.dart';
// import 'screens/home/dashboard/dashboard_screen.dart';
// import 'shared/dialog/modal_page.dart';
// import 'shared/nointernet_screen.dart';

// final _mainNavKey = GlobalKey<NavigatorState>();
// final _dashboardNavKey = GlobalKey<NavigatorState>();
// final _bidListNavKey = GlobalKey<NavigatorState>();
// final _tripListNavKey = GlobalKey<NavigatorState>();
// final _settingNavKey = GlobalKey<NavigatorState>();

// final GoRouter mainRouter = GoRouter(
//   initialLocation: '/',
//   navigatorKey: _mainNavKey,
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (context, state) => SplashScreen(),
//     ),
//     GoRoute(
//       path: '/noInternet',
//       pageBuilder: (context, state) =>
//           NoTransitionPage(child: NoInternetScreen()),
//     ),
//     GoRoute(
//       path: LoginScreen.routeName,
//       builder: (context, state) => const LoginScreen(),
//       routes: <RouteBase>[
//         GoRoute(
//           path: OtpScreen.routeName,
//           builder: (context, state) => const OtpScreen(),
//         ),
//         GoRoute(
//           path: '/createPassword',
//           builder: (context, state) => PasswordScreen(isCreatePassword: true),
//         ),
//         GoRoute(
//           path: '/password',
//           builder: (context, state) => PasswordScreen(isCreatePassword: false),
//           routes: [
//             GoRoute(
//               path: OtpScreen.routeName,
//               builder: (context, state) => const OtpScreen(),
//             ),
//           ],
//         ),
//       ],
//     ),
//     StatefulShellRoute.indexedStack(
//       builder: (context, state, navigationShell) =>
//           HomeScreen(navigationShell: navigationShell),
//       branches: [
//         StatefulShellBranch(
//           navigatorKey: _dashboardNavKey,
//           routes: [
//             GoRoute(
//               path: DashboardScreen.routeName,
//               pageBuilder: (context, state) =>
//                   NoTransitionPage(child: DashboardScreen()),
//             ),
//           ],
//         ),
//         StatefulShellBranch(
//           navigatorKey: _tripListNavKey,
//           routes: <RouteBase>[
//             GoRoute(
//               path: TripListScreen.routeName,
//               pageBuilder: (context, state) =>
//                   NoTransitionPage(child: TripListScreen()),
//             ),
//           ],
//         ),
//         StatefulShellBranch(
//           navigatorKey: _settingNavKey,
//           routes: <RouteBase>[
//             GoRoute(
//               path: SettingScreen.routeName,
//               pageBuilder: (context, state) =>
//                   NoTransitionPage(child: const SettingScreen()),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ],
// );
