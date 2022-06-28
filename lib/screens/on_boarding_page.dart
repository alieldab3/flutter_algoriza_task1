import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
      imageFlex: 4,
      bodyFlex: 3,
      bodyTextStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
      bodyPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 16, right: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 250, 242, 231),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 0),
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
              )),
        ),
      ),
      globalFooter: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 81, 175, 171),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                }),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/register');
                      },
                      child: const Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Color.fromARGB(255, 81, 175, 171)),
                      ))
                ],
              )),
        ],
      ),
      pages: [
        PageViewModel(
          title: "Get food delivery to your doorstep asap",
          body:
              "We have young and professional delivery team that will bring your food as soon as possible to your doorstep",
          image: Column(
            children: [
              const SizedBox(
                height: 69,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 85,
              ),
              Image.asset('assets/images/intro-1.png', width: 255),
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Buy any food from your favorite restaurant",
          body:
              "We are constantly adding your favorite restaurant throughout the territory and around your area carefully selected",
          image: Column(
            children: [
              const SizedBox(
                height: 69,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 85,
              ),
              Image.asset('assets/images/intro-2.png', width: 255),
            ],
          ),
          decoration: pageDecoration,
        ),
      ],
      showSkipButton: false,
      showBackButton: false,
      showNextButton: false,
      showDoneButton: false,
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(22, 7.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        color: Color.fromARGB(255, 232, 232, 232),
        activeSize: Size(22.0, 7.0),
        activeColor: Color.fromARGB(255, 230, 189, 130),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
