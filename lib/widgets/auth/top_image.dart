import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  final double height;
  const TopImage({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/auth-top.jpg",
      height: height,
      fit: BoxFit.fitWidth,
    );
  }
}
