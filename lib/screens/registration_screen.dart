import 'package:flutter/material.dart';
import 'package:flash_chat_flutter/components/rounded_button.dart';
import 'package:flash_chat_flutter/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              child: Container(
                height: 200,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            TextField(
                onChanged: (value) {},
                decoration: kTextFieldDecoration(
                    color: Colors.blueAccent, hintText: "Enter your Email")),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
                onChanged: (value) {},
                decoration: kTextFieldDecoration(
                    color: Colors.blueAccent, hintText: "Enter your password")),
            const SizedBox(
              height: 24,
            ),
            RoundedButton(
              onPressed: () {},
              color: Colors.blueAccent,
              title: "Register",
            )
          ],
        ),
      ),
    );
  }
}
