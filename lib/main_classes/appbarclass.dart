import 'package:estore_marketing/pages/login.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          IconButton(
              onPressed: () {
                print("Code for finding location");
              },
              icon: Icon(
                Icons.add_location,
                color: Colors.white,
              )),
          SizedBox(width: 30,),
          Container(
              color: Colors.greenAccent,
              height: 30,
              width: 50,
              child: Image.asset(
                "assets/images/mainlogo.jpeg",
                fit: BoxFit.fill,
              )),
          SizedBox(
            width: 10,
          ),
          Text(
            "Estore Marketing",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20),
          ),
          SizedBox(
            width: 65,
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ))
        ]),

        Divider(),
        Container(
          padding: EdgeInsets.all(5),
          height: 55,
          child: TextFormField(
            keyboardType: TextInputType.phone,
            onSaved: (item) {
              print("Code for searching the item : " + item.toString());
            },
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Search products",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic)),
          ),
        ),
      ],
    );
  }
}
