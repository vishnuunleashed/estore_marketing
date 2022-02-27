
import 'package:estore_marketing/main_classes/category_classes/petsfood.dart';
import 'package:flutter/material.dart';

class PetFood extends StatefulWidget {


  @override
  _PetFoodState createState() => _PetFoodState();
}

class _PetFoodState extends State<PetFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    centerTitle: true,
    title: Text("Pets Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
    ),
    body: ListView(
      children: [
        PetsFood(),
      ],
    ),
  );
  }
}
