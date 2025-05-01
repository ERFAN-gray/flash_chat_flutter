import 'package:flutter/material.dart';

const kMessageContainerDecoration = BoxDecoration(
    border: Border(top: BorderSide(color: Colors.lightBlueAccent, width: 2)));

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  hintText: "Type your message here...",
  border: InputBorder.none,
  hintStyle: TextStyle(color: Colors.black45),
);

const kSendButtonTextStyle = TextStyle(
    color: Colors.lightBlueAccent, fontWeight: FontWeight.bold, fontSize: 18);

InputDecoration? kTextFieldDecoration(
    {required Color color, required String hintText}) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.black45),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(32))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 2.0),
          borderRadius: const BorderRadius.all(Radius.circular(32))));
}
