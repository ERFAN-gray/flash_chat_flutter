import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_flutter/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller!);

    controller?.forward();
    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: animation!.value,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'logo',
                    child: SizedBox(
                      height: 60,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  AnimatedTextKit(
                    totalRepeatCount: 1,
                    animatedTexts: [
                      FlickerAnimatedText(
                        "Flash Chat",
                        textStyle: const TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            color: Colors.white60),
                      ),
                      TypewriterAnimatedText(
                        speed: const Duration(milliseconds: 400),
                        "Flash Chat",
                        textStyle: const TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 48.0,
              ),
              RoundedButton(
                color: Colors.lightBlueAccent,
                title: "Log In",
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              RoundedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                color: Colors.blueAccent,
                title: "Register",
              )
            ],
          ),
        ));
  }
}
