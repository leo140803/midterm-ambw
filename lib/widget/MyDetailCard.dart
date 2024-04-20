import 'package:flutter/material.dart';

class MyDetailCard
 extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String subheading;
  final String description;
  final bool showOverFlow;

  const MyDetailCard
  ({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.subheading,
    required this.description,
    required this.showOverFlow,
  });

  @override
  Widget build(BuildContext context) {
    double height=0;
    if(MediaQuery.of(context).size.width < 650){
      height=250;
    }else if(MediaQuery.of(context).size.width > 650 && MediaQuery.of(context).size.width < 800){
      height= 210;
    }else if(MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width < 1024){
      height= 280;
    }
    else{
      height= 200;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
      child: Container(
        width: 200,
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
                height: height,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      overflow: showOverFlow ? TextOverflow.ellipsis : TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subheading,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                      overflow: showOverFlow ? TextOverflow.ellipsis : TextOverflow.ellipsis,
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                      overflow: showOverFlow ? TextOverflow.ellipsis : TextOverflow.ellipsis,
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
