import 'package:flutter/material.dart';

import '../widgets/activity_card.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.logout)),
              ),
            ),
            const SizedBox(height: 5),
            const Center(
                child: Text(
              "THE KOSMO CLUB",
              style: TextStyle(fontSize: 33),
            )),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                textAlign: TextAlign.center,
                "My Favorite locations \n & things to do",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 25),
            const ActivityCard(
              title: "home activities",
              icon: Icons.home,
            ),
            const ActivityCard(
                title: "have breakfast for brunch",
                icon: Icons.fastfood_rounded),
            const ActivityCard(title: "have lunch", icon: Icons.lunch_dining),
            const ActivityCard(
                title: "have coffee and snacks",
                icon: Icons.emoji_food_beverage_rounded),
            const ActivityCard(
              icon: Icons.computer,
              title: "co-work / co-study",
            ),
            const ActivityCard(
              title: "have dinner",
              icon: Icons.flatware,
            ),
          ],
        ),
      ),
    );
  }
}
