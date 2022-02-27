import 'package:estore_marketing/main_classes/category_classes/fruitandveg.dart';
import 'package:flutter/material.dart';

class FruitAndVegetables extends StatefulWidget {


  @override
  _FruitAndVegetablesState createState() => _FruitAndVegetablesState();
}

class _FruitAndVegetablesState extends State<FruitAndVegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Fruits And Vegetables",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      body: ListView(
        children: [

          Fruits(),
        ],
      ),
    );
  }
}
