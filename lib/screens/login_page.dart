import 'package:flutter/material.dart';

import '../widgets/auth/top_image.dart';
import '../widgets/auth/welcome_headline.dart';
import '../widgets/auth/title_help_row.dart';
import '../widgets/auth/phone_field.dart';
import '../widgets/auth/primary_button.dart';
import '../widgets/auth/horizontal_divider.dart';
import '../widgets/auth/google_button.dart';
import '../widgets/auth/secondary_button.dart';
import '../widgets/auth/disclaimer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom + 10;

    return Scaffold(
      body: Form(
        key: _loginform,
        child: SizedBox(
          height: screenHeight - keyboardHeight,
          child: ListView(
            children: [
              const TopImage(
                // height: 140,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const WelcomeHeadline(),
                    const SizedBox(
                      height: 10,
                    ),
                    const TitleHelpRow(label: "Sign in"),
                    const SizedBox(
                      height: 20,
                    ),
                    const PhoneField(),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryButton(label: "Sign in",/* formkey: _loginform*/),
                    const SizedBox(
                      height: 20,
                    ),
                    const HorizontalDivider(label: "Or"),
                    const SizedBox(
                      height: 20,
                    ),
                    GoogleButton(
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SecondaryButton(
                        firstLabel: "Don't have an account?",
                        secondLabel: "Register here",
                        onPressed: () {
                          Navigator.of(context).pushNamed('/register');
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    const Disclaimer(
                      text:
                          "Use the application according to policy rules. Any kinds of violations will be subject to sanctions.",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
