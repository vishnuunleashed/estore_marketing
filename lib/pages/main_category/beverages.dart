
import 'package:estore_marketing/main_classes/category_classes/beverages.dart';
import 'package:flutter/material.dart';

class ShopBeverage extends StatefulWidget {
  const ShopBeverage({Key? key}) : super(key: key);

  @override
  _ShopBeverageState createState() => _ShopBeverageState();
}

class _ShopBeverageState extends State<ShopBeverage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Beverages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      body: ListView(
        children: [

          Beverages(),
        ],
      ),
    );
  }
}
