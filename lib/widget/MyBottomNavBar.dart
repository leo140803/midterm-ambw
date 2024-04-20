import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  final int index;
  const MyBottomNavBar({super.key, required this.index});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 40,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.location_on_outlined,
            size: 40,
          ),
          label: 'Discovery',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark_border_sharp,
            size: 40,
          ),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.emoji_events_outlined,
            size: 40,
          ),
          label: 'Top Foodie',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_outlined,
            size: 40,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: widget.index,
      selectedItemColor: Colors.amber[500],
      unselectedItemColor: Colors.grey,
      onTap: (int index) {
        if (widget.index != index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/discover');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/bookmark');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/foodie');
          } else if (index == 4) {
            Navigator.pushNamed(context, '/profile');
          }
        }
      },
    );
  }
}
