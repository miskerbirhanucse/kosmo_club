import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  static const String routeName = '/favorite-screen';
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Favorite screen"),
      ),
    );
  }
}
