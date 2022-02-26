import 'package:estore_marketing/main_classes/bakery.dart';
import 'package:estore_marketing/main_classes/beverages.dart';
import 'package:estore_marketing/main_classes/fruitandvegetables.dart';
import 'package:estore_marketing/main_classes/groceries.dart';
import 'package:estore_marketing/main_classes/maincategory.dart';
import 'package:estore_marketing/main_classes/medicines.dart';
import 'package:estore_marketing/main_classes/petsfood.dart';
import 'package:flutter/material.dart';

class SubHome extends StatefulWidget {
  const SubHome({Key? key}) : super(key: key);

  @override
  _SubHomeState createState() => _SubHomeState();
}

class _SubHomeState extends State<SubHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(padding: EdgeInsets.all(15),child: Card(elevation:10 ,child: Image.asset("assets/images/banner.jpeg"),)),

          Text("Category",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          MainCategory(),
          Container(color: Colors.grey,height: 3),
          Text("Fruits And Vegetables",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Fruits(),
          Container(color: Colors.grey,height: 3),
          Text("Groceries And Staples",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Groceries(),
          Container(color: Colors.grey,height: 3),
          Text("Bakery,Cakes And Dairy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Bakery(),
          Container(color: Colors.grey,height: 3),
          Text("Beverages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Beverages(),
          Container(color: Colors.grey,height: 3),
          Text("Pets Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          PetsFood(),
          Container(color: Colors.grey,height: 3),
          Text("Medicines",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Medicines(),

        ],
      ),
    );
  }
}
