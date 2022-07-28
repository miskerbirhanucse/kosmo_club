import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  static const String routeName='/info-screen';
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Info screen")),
    );
  }
}