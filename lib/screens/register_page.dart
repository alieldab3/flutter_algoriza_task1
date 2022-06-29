import 'package:flutter/material.dart';
import '../widgets/auth/custom_text_field.dart';

import '../widgets/auth/top_image.dart';
import '../widgets/auth/welcome_headline.dart';
import '../widgets/auth/title_help_row.dart';
import '../widgets/auth/phone_field.dart';
import '../widgets/auth/primary_button.dart';
import '../widgets/auth/horizontal_divider.dart';
import '../widgets/auth/google_button.dart';
import '../widgets/auth/secondary_button.dart';
import '../widgets/auth/disclaimer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _registerform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom + 10;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   iconTheme: IconThemeData(
      //     color: Colors.black,
      //   ),
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
      //   onPressed: () => Navigator.of(context).pop(),
      // ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Form(
        key: _registerform,
        child: SizedBox(
          height: screenHeight - keyboardHeight,
          child: ListView(
            children: [
              const TopImage(
                height: 200,
              ),
              const SizedBox(
                height: 10,
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
                    const TitleHelpRow(label: "Register"),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextField(
                      label: "Email",
                      hintText: 'Eg. example@email.com',
                      validationText: 'Email is required',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const PhoneField(),
                    const SizedBox(
                      height: 15,
                    ),
                    const CustomTextField(
                      label: "Password",
                      hintText: 'Password',
                      validationText: 'Password is required',
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    PrimaryButton(
                      label: "Register", /* formkey: _registerform*/
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const HorizontalDivider(label: "Or"),
                    const SizedBox(
                      height: 15,
                    ),
                    GoogleButton(
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SecondaryButton(
                      firstLabel: "Have an account?",
                      secondLabel: "Sign in here",
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                    ),
                    const Center(
                      child: Disclaimer(
                        text: "By registering your account, you agree to our",
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Terms and conditions',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
        icon: const CircleAvatar(
          backgroundColor: Colors.black87,
          child: Icon(Icons.keyboard_arrow_left, color: Colors.white),
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
