import 'package:estore_marketing/main_classes/bakery.dart';
import 'package:flutter/material.dart';

class BakerandCake extends StatefulWidget {
  const BakerandCake({Key? key}) : super(key: key);

  @override
  _BakerandCakeState createState() => _BakerandCakeState();
}

class _BakerandCakeState extends State<BakerandCake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bakery,Cakes And Dairy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      body: ListView(
        children: [

          Bakery(),
        ],
      ),
    );
  }
}
