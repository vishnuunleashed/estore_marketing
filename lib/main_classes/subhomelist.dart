import 'package:estore_marketing/main_classes/category_classes/petsfood.dart';
import 'package:estore_marketing/pages/main_category/bakerycakesanddairy.dart';
import 'package:estore_marketing/pages/main_category/beverages.dart';
import 'package:estore_marketing/pages/main_category/fruitsandvegetables.dart';
import 'package:estore_marketing/pages/main_category/grocery.dart';
import 'package:estore_marketing/pages/main_category/petfood.dart';
import 'package:estore_marketing/pages/main_category/shopmedicines.dart';
import 'package:flutter/material.dart';

import 'maincategory.dart';
import 'category_classes/bakery.dart';
import 'category_classes/beverages.dart';
import 'category_classes/fruitandveg.dart';
import 'category_classes/groceries.dart';
import 'category_classes/medicines.dart';

class SubHomeList extends StatefulWidget {
  const SubHomeList({Key? key}) : super(key: key);

  @override
  _SubHomeListState createState() => _SubHomeListState();
}

class _SubHomeListState extends State<SubHomeList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Padding(padding: EdgeInsets.all(15),child: Card(elevation:10 ,child: Image.asset("assets/images/banner.jpeg"),)),

        Text("Category",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
        MainCategory(),
        Container(color: Colors.grey,height: 3),
        Row(
          children: [
            Text("Fruits And Vegetables",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
            SizedBox(width: 80,),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FruitAndVegetables()));
            }, child: Text("VIEW ALL"))
          ],
        ),
        Fruits(),
        Container(color: Colors.grey,height: 3),
        Row(
          children: [
            Text("Groceries And Staples",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
            SizedBox(width: 80,),
            TextButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Grocery())), child: Text("VIEW ALL"))
          ],
        ),
        Groceries(),
        Container(color: Colors.grey,height: 3),
        Row(
          children: [
            Text("Bakery,Cakes And Dairy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
            SizedBox(width: 65,),
            TextButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BakerandCake())), child: Text("VIEW ALL"))
          ],
        ),
        Bakery(),
        Container(color: Colors.grey,height: 3),
        Row(
          children: [
            Text("Beverages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
            SizedBox(width: 213,),
            TextButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShopBeverage())), child: Text("VIEW ALL"))
          ],
        ),
        Beverages(),
        Container(color: Colors.grey,height: 3),
        Row(
          children: [
            Text("Pets Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
            SizedBox(width: 219,),
            TextButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PetFood())), child: Text("VIEW ALL"))
          ],
        ),
        PetsFood(),
        Container(color: Colors.grey,height: 3),
        Row(
          children: [
            Text("Medicines",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
            SizedBox(width: 214,),
            TextButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShopMeds())), child: Text("VIEW ALL"))
          ],
        ),
        Medicines(),

      ],
    );
  }
}
