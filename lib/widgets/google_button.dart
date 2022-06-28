import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final void Function()? onPressed;
  const GoogleButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: OutlinedButton.icon(
        icon: Image.asset(
          "assets/images/google-logo.png",
          height: 20,
        ),
        label: const Text("Sign in with Google"),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 1.0, color: Colors.blue),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
