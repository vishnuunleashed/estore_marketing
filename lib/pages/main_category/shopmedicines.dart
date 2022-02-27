import 'package:estore_marketing/main_classes/medicines.dart';
import 'package:flutter/material.dart';

class ShopMeds extends StatefulWidget {
  const ShopMeds({Key? key}) : super(key: key);

  @override
  _ShopMedsState createState() => _ShopMedsState();
}

class _ShopMedsState extends State<ShopMeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Medicines",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      body: ListView(
        children: [

          Medicines(),
        ],
      ),
    );
  }
}
