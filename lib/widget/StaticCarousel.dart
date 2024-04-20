import 'package:flutter/material.dart';

class StaticCarousel extends StatelessWidget {
  final String title;
  final String image;
  final int place;
  const StaticCarousel(
      {super.key, required this.title, required this.image, required this.place});

  @override
  Widget build(BuildContext context) {
    double height= 0;
    if(MediaQuery.of(context).size.width < 650){
      height=300;
    }else if(MediaQuery.of(context).size.width > 650 && MediaQuery.of(context).size.width < 800){
      height= 600;
    }else if(MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width < 1024){
      height= 650;
    }
    else{
      height= 675;
    }
    return SizedBox(
      height: height,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 16.0,
            bottom: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$place Places',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 8.0,
            child: Row(
              children: List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.white : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
