import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Groceries extends StatefulWidget {

  @override
  _GroceriesState createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Inventory(),
      child: Consumer<Inventory>(
        builder: (context, value, child) => GridView.builder(

          physics: NeverScrollableScrollPhysics(),

          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              childAspectRatio: 0.6,
              crossAxisSpacing: 50,
              mainAxisSpacing: 10,
              crossAxisCount: 3),
          itemCount: value.groceries.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(value.groceries[index].pic!),
              Text(value.groceries[index].name.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),

              Text(value.groceries[index].price.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
