import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final bool disable;
  const MyAppBar({super.key, required this.title, required this.disable});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        surfaceTintColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.amber[300],
            size: 40,
          ),
          onPressed: () {
            if (!disable) {
              Navigator.pop(context);
            }
          },
        ));
  }
}
