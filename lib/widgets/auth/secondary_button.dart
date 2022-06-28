import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String firstLabel;
  final String secondLabel;
  final void Function()? onPressed;

  const SecondaryButton(
      {Key? key,
      required this.firstLabel,
      required this.secondLabel,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(firstLabel),
        TextButton(onPressed: onPressed, child: Text(secondLabel))
      ],
    );
  }
}
