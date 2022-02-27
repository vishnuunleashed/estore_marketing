import 'package:estore_marketing/main_classes/fruitandveg.dart';
import 'package:flutter/material.dart';

import 'main_category/fruitsandvegetables.dart';

class MyCategory extends StatefulWidget {
  @override
  _MyCategoryState createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return FruitAndVegetables();
            }));
          },title: Text("Fruits And Vegetables",textAlign: TextAlign.start,),leading: Icon(Icons.fastfood_outlined),trailing: Icon(Icons.arrow_forward_ios_rounded),),
        ],
      ),
    );
  }
}
