import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:estore_marketing/main_classes/appbarclass.dart';
import 'package:estore_marketing/main_classes/bakery.dart';
import 'package:estore_marketing/main_classes/beverages.dart';
import 'package:estore_marketing/main_classes/fruitandvegetables.dart';
import 'package:estore_marketing/main_classes/groceries.dart';
import 'package:estore_marketing/main_classes/maincategory.dart';
import 'package:estore_marketing/main_classes/medicines.dart';
import 'package:estore_marketing/main_classes/petsfood.dart';
import 'package:estore_marketing/pages/subhome.dart';
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
  int _selectedIndex = 0;


  callData(index){
    setState(() {
      _selectedIndex = index;
    });

  }

  final screen = [
      SubHome(),
      Container(color: Colors.greenAccent)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 130, // Set this height
        flexibleSpace: MyAppBar(),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.apps_rounded),label: "Categories"),

      ],
        backgroundColor: Colors.green[800],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        onTap: callData,

      ),
      body: screen[_selectedIndex],
    );
  }
}
