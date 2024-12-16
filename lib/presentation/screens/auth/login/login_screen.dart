import 'package:flutter/material.dart';
import 'viewmodel/login_viewmodel.dart';
import '../../../core/viewmodel/widget/vm_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login';
  static Route<void> route() =>
      MaterialPageRoute<void>(builder: (_) => const LoginScreen());

  @override
  Widget build(BuildContext context) {
    return VMScreen<LoginViewModel, LoginState>(
      createViewModel: (context) => LoginViewModel(),
      builder: (context, screenState, state) {
        return const Scaffold(
          body: Placeholder(),
        );
      },
    );
  }
}
