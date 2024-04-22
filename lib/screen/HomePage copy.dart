import 'package:flutter/material.dart';
import 'package:uts_flutter/widget/MyAppBar.dart';
import 'package:uts_flutter/widget/MyBottomNavBar.dart';
import 'package:uts_flutter/widget/MyCard.dart';
import 'package:uts_flutter/widget/SearchField.dart';
import 'package:uts_flutter/widget/StaticCarousel.dart';
import 'package:uts_flutter/widget/SubMenu.dart';

class HomePage extends StatelessWidget {
  final String title;
  final int index;
  final bool disable;

  const HomePage({
    super.key,
    required this.title,
    required this.index,
    required this.disable,
  });

  static const List<Widget> restaurant = [
    MyCard(
      imageAsset: "assets/restaurants/kfc.jpeg",
      name: "KFC Broadway",
      subheading: "122 Queen Street",
      description: "Fried Chicken, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/greek.jpeg",
      name: "Greek House",
      subheading: "23 Queen Street",
      description: "Burritos, Greek",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/mcd.jpg",
      name: "MCD Broadway",
      subheading: "200 King Street",
      description: "Fried Chicken, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/innout.jpeg",
      name: "In n Out Burger",
      subheading: "225 King Street",
      description: "Burger, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/subway.jpeg",
      name: "Subway Sandwich",
      subheading: "250 King Street",
      description: "Sandwich, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/starbucks.jpeg",
      name: "Starbucks",
      subheading: "100 King Street",
      description: "Coffe, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/beast.jpeg",
      name: "Beast Burger",
      subheading: "300 King Street",
      description: "Burger, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/popeyes.jpeg",
      name: "Popeyes",
      subheading: "500 King Street",
      description: "Chicken Burger, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/raisingCane.webp",
      name: "Raising Cane's",
      subheading: "550 King Street",
      description: "Chicken Finger, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/zaxby.webp",
      name: "Zaxby's",
      subheading: "550 Queen Street",
      description: "Fried Chicken, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/tacobell.webp",
      name: "Taco Bell",
      subheading: "600 King Street",
      description: "Taco, American",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/restaurants/burgerking.jpeg",
      name: "Burger King",
      subheading: "625 King Street",
      description: "Burger, American",
      showOverFlow: false,
    ),
    
  ];

  static const List<Widget> meals = [
    MyCard(
      imageAsset: "assets/meal/burger.jpeg",
      name: "Burger 🍔",
      subheading: "Beef Burder",
      description: "Ingredients: Beef patty, Bun, Egg, Topping and Condiments",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/meal/french_fries.jpeg",
      name: "French Fries 🥔",
      subheading: "French Fries with 100% Potato",
      description: "Ingredients: Potatoes, Oil, and Salt",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/meal/fried_chicken.webp",
      name: "Fried Chicken 🍗",
      subheading: "Crispy Fried Chicken",
      description:
          "Ingredients: Chicken, Marinade, Flour Mixture, Egg, and Oil",
      showOverFlow: false,
    ),
    MyCard(
      imageAsset: "assets/meal/sandwich.jpeg",
      name: "Sandwich 🍞",
      subheading: "Healthy Sandwich",
      description:
          "Ingredients: Bread, Spreads, Proteins, Cheese, and Vegetables",
      showOverFlow: false,
    ),
  ];

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
      body: ListView(
        children: const <Widget>[
          SearchField(),
          StaticCarousel(
            title: "Thai Style",
            image: "assets/tomyum.webp",
            place: 12,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubMenu(
                  title: "Most Popular",
                  route: '/detailPopular',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [...restaurant],
                  ),
                ),
                SizedBox(height: 20,),
                SubMenu(
                  title: "Meal Deals",
                  route: '/detailMeal',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [...meals],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(
        index: index,
      ),
    );
  }
}
