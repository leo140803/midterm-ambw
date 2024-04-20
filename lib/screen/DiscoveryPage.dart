import 'package:flutter/material.dart';
import 'package:uts_flutter/widget/MyAppBar.dart';
import 'package:uts_flutter/widget/MyBottomNavBar.dart';

class DiscoveryPage extends StatelessWidget {
  final String title;
  final int index;
  final bool disable;
  const DiscoveryPage(
      {super.key,
      required this.title,
      required this.index,
      required this.disable});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: MyAppBar(
          title: title,
          disable: disable,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 100,
            ),
            Text(
              "Discover Page",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        index: index,
      ),
    );
  }
}
