import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainCategory extends StatefulWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  _MainCategoryState createState() => _MainCategoryState();
}

class _MainCategoryState extends State<MainCategory> {
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
          itemCount: value.category.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(value.category[index].pic!),
              Text(value.category[index].name.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
