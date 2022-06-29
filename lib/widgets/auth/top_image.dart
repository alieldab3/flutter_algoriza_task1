import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  final double? height;
  const TopImage({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/login-top.png",
      height: height,
      fit: BoxFit.fitWidth,
    );
  }
}
