import 'package:estore_marketing/main_classes/category_classes/fruitandveg.dart';
import 'package:estore_marketing/pages/main_category/bakerycakesanddairy.dart';
import 'package:estore_marketing/pages/main_category/beverages.dart';
import 'package:estore_marketing/pages/main_category/grocery.dart';
import 'package:estore_marketing/pages/main_category/petfood.dart';
import 'package:estore_marketing/pages/main_category/shopmedicines.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return FruitAndVegetables();
              }));
            },
            title: Text(
              "Fruits And Vegetables",
              textAlign: TextAlign.start,
            ),
            leading: Icon(Icons.fastfood_outlined),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Grocery();
              }));
            },
            title: Text(
              "Groceries And Staples",
              textAlign: TextAlign.start,
            ),
            leading: Icon(Icons.breakfast_dining),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return BakerandCake();
              }));
            },
            title: Text(
              "Baker,Cakes And Diary",
              textAlign: TextAlign.start,
            ),
            leading: Icon(Icons.cake_outlined),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShopBeverage();
              }));
            },
            title: Text(
              "Beverages",
              textAlign: TextAlign.start,
            ),
            leading: Icon(Icons.local_drink_outlined),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PetFood();
              }));
            },
            title: Text(
              "Pets Food",
              textAlign: TextAlign.start,
            ),
            leading: Icon(Icons.pets),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShopMeds();
              }));
            },
            title: Text(
              "Medicines",
              textAlign: TextAlign.start,
            ),
            leading: Icon(Icons.medical_services_outlined),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}
