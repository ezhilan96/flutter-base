import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeNavHost extends StatelessWidget {
  const HomeNavHost({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
        currentIndex: navigationShell.currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          )
        ],
      ),
    );
  }
}
