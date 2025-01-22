import 'package:flutter/material.dart';
import 'package:flash_chat_flutter/components/rounded_button.dart';
import 'package:flash_chat_flutter/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200,
                child: Image.asset("images/logo.png"),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            TextField(
                onChanged: (value) {},
                decoration: kTextFieldDecoration(
                    color: Colors.lightBlue, hintText: "Enter your Email")),
            const SizedBox(height: 8),
            TextField(
                onChanged: (value) {},
                decoration: kTextFieldDecoration(
                    color: Colors.lightBlue, hintText: "Enter your password")),
            const SizedBox(
              height: 24,
            ),
            RoundedButton(
              onPressed: () {},
              color: Colors.lightBlueAccent,
              title: "Log In",
            )
          ],
        ),
      ),
    );
  }
}
