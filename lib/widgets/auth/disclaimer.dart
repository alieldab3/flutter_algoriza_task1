import 'package:flutter/material.dart';

class Disclaimer extends StatelessWidget {
  final String text;
  const Disclaimer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.grey, fontSize: 13.5),
    );
  }
}
