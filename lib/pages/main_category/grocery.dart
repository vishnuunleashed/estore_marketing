import 'package:estore_marketing/main_classes/category_classes/groceries.dart';
import 'package:flutter/material.dart';

class Grocery extends StatefulWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Groceries And Staples",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      body: ListView(
        children: [

          Groceries(),
        ],
      ),
    );
  }
}
