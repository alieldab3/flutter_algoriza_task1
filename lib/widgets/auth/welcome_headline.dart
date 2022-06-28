import 'package:flutter/material.dart';

class WelcomeHeadline extends StatelessWidget {
  const WelcomeHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome to Fashion Daily",
      style: TextStyle(color: Colors.grey, fontSize: 12),
    );
  }
}
