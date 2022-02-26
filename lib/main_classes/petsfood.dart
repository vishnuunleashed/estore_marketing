import 'package:estore_marketing/Inventory/inventory.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class PetsFood extends StatefulWidget {
  const PetsFood({Key? key}) : super(key: key);

  @override
  _PetsFoodState createState() => _PetsFoodState();
}

class _PetsFoodState extends State<PetsFood> {
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
          itemCount: value.petsfood.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(value.petsfood[index].pic!),
              Text(value.petsfood[index].name.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),

              Text(value.petsfood[index].price.toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
