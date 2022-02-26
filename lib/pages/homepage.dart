import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:estore_marketing/main_classes/appbarclass.dart';
import 'package:estore_marketing/main_classes/bakery.dart';
import 'package:estore_marketing/main_classes/beverages.dart';
import 'package:estore_marketing/main_classes/fruitandvegetables.dart';
import 'package:estore_marketing/main_classes/groceries.dart';
import 'package:estore_marketing/main_classes/maincategory.dart';
import 'package:estore_marketing/main_classes/medicines.dart';
import 'package:estore_marketing/main_classes/petsfood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 130, // Set this height
        flexibleSpace: MyAppBar(),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(padding: EdgeInsets.all(15),child: Card(elevation:10 ,child: Image.asset("assets/images/banner.jpeg"),)),
          Text("Category",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          MainCategory(),
          Text("Fruits And Vegetables",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Fruits(),
          Text("Groceries And Staples",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Groceries(),
          Text("Bakery,Cakes And Dairy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Bakery(),
          Text("Beverages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Beverages(),
          Text("Pets Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          PetsFood(),
          Text("Medicines",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          Medicines(),

        ],
      ),
    );
  }
}
