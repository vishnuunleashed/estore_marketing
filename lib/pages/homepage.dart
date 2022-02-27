import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:estore_marketing/main_classes/appbarclass.dart';
import 'package:estore_marketing/main_classes/bakery.dart';
import 'package:estore_marketing/main_classes/beverages.dart';
import 'package:estore_marketing/main_classes/fruitandveg.dart';
import 'package:estore_marketing/main_classes/groceries.dart';
import 'package:estore_marketing/main_classes/maincategory.dart';
import 'package:estore_marketing/main_classes/medicines.dart';
import 'package:estore_marketing/main_classes/petsfood.dart';
import 'package:estore_marketing/pages/subhome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'categorymain.dart';
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
      MyCategory(),
      Container(child: Center(child: Image.asset("assets/images/petsfood/comingsoon1.jpg"),),),
      Container(child: Center(child: Image.asset("assets/images/petsfood/comingsoon1.jpg"),),),

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
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
        BottomNavigationBarItem(icon: Icon(Icons.apps_rounded),label: "CATEGORIES"),
        BottomNavigationBarItem(icon: Icon(Icons.store),label: "STORES"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "ORDERS"),


      ],

        backgroundColor: Colors.green[800],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: callData,

      ),
      body: screen[_selectedIndex],
    );
  }
}
