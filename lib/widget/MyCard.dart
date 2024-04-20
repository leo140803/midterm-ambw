import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String subheading;
  final String description;
  final bool showOverFlow;

  const MyCard({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.subheading,
    required this.description,
    required this.showOverFlow,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth > 600 ? 300 : 200;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
      child: Container(
        width: containerWidth,
        child: Card(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                imageAsset,
                fit: BoxFit.fill,
                height: containerWidth*0.8,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      overflow: showOverFlow ? TextOverflow.clip : TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subheading,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                      overflow: showOverFlow ? TextOverflow.clip : TextOverflow.ellipsis,
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                      overflow: showOverFlow ? TextOverflow.clip : TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
