import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  final String label;
  const HorizontalDivider({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          thickness: 0.7,
          endIndent: 20.0,
        )),
        Text(label),
        const Expanded(
            child: Divider(
          thickness: 0.7,
          indent: 20.0,
        )),
      ],
    );
  }
}
