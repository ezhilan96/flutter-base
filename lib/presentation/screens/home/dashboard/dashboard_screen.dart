import 'package:flutter/material.dart';
import '../../../core/viewmodel/widget/vm_screen.dart';
import 'viewmodel/dashboard_viewmodel.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static Route<void> route() =>
      MaterialPageRoute<void>(builder: (_) => const DashboardScreen());

  @override
  Widget build(BuildContext context) {
    return VMScreen<DashboardViewModel, DashboardState>(
      createViewModel: (context) => DashboardViewModel(),
      builder: (context, screenState, state) {
        return const Scaffold(
          body: Placeholder(),
        );
      },
    );
  }
}
