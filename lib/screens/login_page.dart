import 'package:flutter/material.dart';

import '../widgets/google_button.dart';
import '../widgets/horizontal_divider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Welcome to Fashion Daily",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sign in",
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.help,
                        textDirection: TextDirection.ltr),
                    label: const Text(
                      "Help",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Phone"),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 15),
                    ))),
            const SizedBox(
              height: 30,
            ),
            const HorizontalDivider(label: "Or"),
            const SizedBox(
              height: 30,
            ),
            GoogleButton(
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have any account?"),
                TextButton(onPressed: () {}, child: const Text("Register here"))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Use the application according to policy rules. Any kinds of violations will be subject to sanctions.",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13.5),
            )
          ],
        ),
      ),
    );
  }
}
