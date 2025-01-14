import 'package:flutter/material.dart';
import 'package:flash_chat_flutter/constants.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.close))],
        title: const Text("⚡️Flash Chat"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                    onChanged: (value) {},
                    decoration: kMessageTextFieldDecoration,
                  )),
                  TextButton(
                    onPressed: () {},
                    child: const Text('SEND', style: kSendButtonTextStyle),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
