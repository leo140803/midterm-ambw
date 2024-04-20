import 'package:flutter/material.dart';
import 'package:uts_flutter/widget/MyAppBar.dart';
import 'package:uts_flutter/widget/MyBottomNavBar.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final int index;
  final bool disable;
  final List <Widget> data;
  const DetailPage(
      {super.key,
      required this.title,
      required this.index,
      required this.disable,
      required this.data
      });
  @override
  Widget build(BuildContext context) {
    int count=0;
    if(MediaQuery.of(context).size.width < 650){
      count=1;
    }else if(MediaQuery.of(context).size.width > 650 && MediaQuery.of(context).size.width < 1024){
      count=2;
    }else if(MediaQuery.of(context).size.width > 650 && MediaQuery.of(context).size.width < 1250){
      count = 3;
    }else{
      count= 4;
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: MyAppBar(
          title: title,
          disable: disable,
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          childAspectRatio: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: ((context, index) {
          return data[index];
        }),
        itemCount: data.length,
        padding: EdgeInsets.all(10),

      ),
      bottomNavigationBar: MyBottomNavBar(
        index: index,
      ),
    );
  }
}
