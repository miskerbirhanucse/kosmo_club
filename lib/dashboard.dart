import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kosmo_club/features/add/screen/add_screen.dart';
import 'package:kosmo_club/features/favorite/screen/favorite_screen.dart';
import 'package:kosmo_club/features/home/screen/home_screen.dart';
import 'package:kosmo_club/features/info/screen/info_screen.dart';
import 'package:kosmo_club/features/notifications/screen/message_screen.dart';
import 'package:kosmo_club/models/message.dart';

import 'features/notifications/controller/notificataion_controller.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  int _currentIndex = 0;
  final pages = [
    const HomeScreen(),
    const MessageScreen(),
    const FavoriteScreen(),
    const AddScreen(),
    const InfoScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedIconTheme: IconTheme.of(context).copyWith(
          color: Colors.white,
        ),
        unselectedIconTheme: IconTheme.of(context).copyWith(
          color: Colors.grey,
        ),
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: StreamBuilder<List<NotificationModel>>(
                stream:
                    ref.read(notificationControllerProvider).readNotification(),
                builder: (context, snapshot) {
                
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return snapshot.data!.isNotEmpty
                      ? Badge(
                          badgeContent: Row(children: [
                            Text(
                              snapshot.data!.length.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ]),
                          position: const BadgePosition(
                            top: -15,
                            start: -10,
                          ),
                          child: const Icon(Icons.message),
                        )
                      : const Icon(Icons.message);
                }),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
      ),
    );
  }
}
