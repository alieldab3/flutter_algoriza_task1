import 'package:flutter/material.dart';

class TitleHelpRow extends StatelessWidget {
  final String label;
  const TitleHelpRow({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontFamily: 'MetaSerifPro',
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.help, textDirection: TextDirection.ltr),
            label: const Text(
              "Help",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
        )
      ],
    );
  }
}
