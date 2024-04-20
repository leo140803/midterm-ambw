import 'package:flutter/material.dart';
import 'package:uts_flutter/screen/BookmarkPage.dart';
import 'package:uts_flutter/screen/DiscoveryPage.dart';
import 'package:uts_flutter/screen/HomePage.dart';
import 'package:uts_flutter/screen/DetailPage.dart';
import 'package:uts_flutter/screen/ProfilePage.dart';
import 'package:uts_flutter/screen/SplashScreen.dart';
import 'package:uts_flutter/screen/TopFoodiePage.dart';
import 'package:uts_flutter/widget/MyDetailCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List <Widget> restaurant = [
    MyDetailCard(
      imageAsset: "assets/restaurants/kfc.jpeg",
      name: "KFC Broadway",
      subheading: "122 Queen Street",
      description: "Fried Chicken, American",
      showOverFlow: true,
    ),
    MyDetailCard(
      imageAsset: "assets/restaurants/greek.jpeg",
      name: "Greek House",
      subheading: "23 Queen Street",
      description: "Burritos, Greek",
      showOverFlow: true,
    ),
    MyDetailCard(
      imageAsset: "assets/restaurants/mcd.jpg",
      name: "MCD Broadway",
      subheading: "200 King Street",
      description: "Fried Chicken, American",
      showOverFlow: true,
    ),
    MyDetailCard(
      imageAsset: "assets/restaurants/innout.jpeg",
      name: "In n Out Burger",
      subheading: "225 King Street",
      description: "Burger, American",
      showOverFlow: true,
    ),
  ];

  static const List <Widget> meals = [
    MyDetailCard(
      imageAsset: "assets/meal/burger.jpeg",
      name: "Burger 🍔",
      subheading: "Beef Burder",
      description: "Ingredients: Beef patty, Bun, Egg, Topping and Condiments",
      showOverFlow: true,
    ),
    MyDetailCard(
      imageAsset: "assets/meal/french_fries.jpeg",
      name: "French Fries 🥔",
      subheading: "French Fries with 100% Potato",
      description: "Ingredients: Potatoes, Oil, and Salt",
      showOverFlow: true,
    ),
    MyDetailCard(
      imageAsset: "assets/meal/fried_chicken.webp",
      name: "Fried Chicken 🍗",
      subheading: "Crispy Fried Chicken",
      description: "Ingredients: Chicken, Marinade, Flour Mixture, Egg, and Oil",
      showOverFlow: true,
    ),
    MyDetailCard(
      imageAsset: "assets/meal/sandwich.jpeg",
      name: "Sandwich 🍞",
      subheading: "Healthy Sandwich",
      description: "Ingredients: Bread, Spreads, Proteins, Cheese, and Vegetables",
      showOverFlow: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sydney CBD',
      routes: {
        '/home': ((context) => const HomePage(
              title: "Sydney CBD",
              index: 0,
              disable: true,
            )),
        '/discover': ((context) => const DiscoveryPage(
              title: "Discover",
              index: 1,
              disable: false,
            )),
        '/bookmark': ((context) => const BookmarkPage(
              title: "Bookmark",
              index: 2,
              disable: false,
            )),
        '/foodie': ((context) => const TopFoodiePage(
              title: "TopFoodie",
              index: 3,
              disable: false,
            )),
        '/profile': ((context) => const ProfilePage(
              title: "Profile",
              index: 4,
              disable: false,
            )),
        '/detailPopular': ((context) => const DetailPage(
              title: "Most Popular",
              index: 0,
              disable: false,
              data: restaurant
            )),
        '/detailMeal': ((context) => const DetailPage(
              title: "Meal Deals",
              index: 0,
              disable: false,
              data: meals
            )),
      },
      home: const SplashScreen()
    );
  }
}
