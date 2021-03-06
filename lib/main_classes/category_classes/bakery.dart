import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bakery extends StatefulWidget {
  const Bakery({Key? key}) : super(key: key);

  @override
  _BakeryState createState() => _BakeryState();
}

class _BakeryState extends State<Bakery> {
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
          itemCount: value.bakery.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(value.bakery[index].pic!),
              Text(value.bakery[index].name.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),

              Text("₹"+value.bakery[index].price.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
