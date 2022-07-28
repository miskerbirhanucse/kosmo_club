import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static const String routeName = "/message-screen";
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Message Screen")),
    );
  }
}
