import 'package:estore_marketing/main_classes/category_classes/bakery.dart';
import 'package:estore_marketing/main_classes/category_classes/beverages.dart';

import 'package:estore_marketing/main_classes/category_classes/fruitandveg.dart';
import 'package:estore_marketing/main_classes/category_classes/groceries.dart';
import 'package:estore_marketing/main_classes/maincategory.dart';

import 'package:estore_marketing/main_classes/category_classes/medicines.dart';
import 'package:estore_marketing/main_classes/category_classes/petsfood.dart';
import 'package:estore_marketing/main_classes/subhomelist.dart';
import 'package:estore_marketing/pages/main_category/bakerycakesanddairy.dart';
import 'package:estore_marketing/pages/main_category/beverages.dart';
import 'package:estore_marketing/pages/main_category/grocery.dart';
import 'package:estore_marketing/pages/main_category/petfood.dart';
import 'package:estore_marketing/pages/main_category/shopmedicines.dart';
import 'package:flutter/material.dart';

import 'main_category/fruitsandvegetables.dart';

class SubHome extends StatefulWidget {
  const SubHome({Key? key}) : super(key: key);

  @override
  _SubHomeState createState() => _SubHomeState();
}

class _SubHomeState extends State<SubHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SubHomeList(),
    );
  }
}
