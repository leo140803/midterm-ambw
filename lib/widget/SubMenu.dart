import 'package:flutter/material.dart';

class SubMenu extends StatelessWidget {
  final String title;
  final String route;
  const SubMenu({super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Text(
            'See all',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
