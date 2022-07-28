import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  static const String routeName = '/add-screen';
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Add Screen")),
    );
  }
}
