import 'package:flutter/material.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: Center(
          child: Text("No Internet Connection"),
        ),
      ),
    );
  }
}
