import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:estore_marketing/main_classes/appbarclass.dart';
import 'package:estore_marketing/main_classes/maincategory.dart';
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
  // Inventory? inventory;
  // @override
  // void initState() {
  //
  //   inventory = context.read<Inventory>();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 130, // Set this height
        flexibleSpace: MyAppBar(),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(padding: EdgeInsets.all(15),child: Card(elevation:10 ,child: Image.asset("assets/images/banner.jpeg"),)),
          Text("Category",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          MainCategory(),
          Text("Fruits And Vegetables",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[800]),),
          ChangeNotifierProvider(
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
                itemCount: value.fruitsandveg.length,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(value.fruitsandveg[index].pic!),
                    Text(value.fruitsandveg[index].name.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),

                    Text(value.fruitsandveg[index].price.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15),child: Card(elevation:10 ,child: Image.asset("assets/images/banner.jpeg"),)),
          Padding(padding: EdgeInsets.all(15),child: Card(elevation:10 ,child: Image.asset("assets/images/banner.jpeg"),)),
          Padding(padding: EdgeInsets.all(15),child: Card(elevation:10 ,child: Image.asset("assets/images/banner.jpeg"),)),
        ],
      ),
    );
  }
}
