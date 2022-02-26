import 'package:estore_marketing/Model/category.dart';
import 'package:estore_marketing/Model/items.dart';
import 'package:flutter/material.dart';

class Inventory extends ChangeNotifier {

  List<Items> _fruitsandveg  =[];
  List<Items> _groceries = [];
  List<Items> _bakery = [];
  List<Items> _beverages = [];
  List<Items> _medicines = [];
  List<Items> _petsfood = [];
  List<Category> _category = [];

  Items _activeItems = new Items();




  Inventory(){
    _category = [
      Category(pic:"assets/images/category/fruitsandvegetables.jpeg" ,name:"Fruits And Vegetables"),
      Category(pic:"assets/images/category/groceriesandstaples.jpeg",name: "Groceries and Staples"),
      Category(pic: "assets/images/category/bakery.jpeg",name:"Bakery And Diary" ),
      Category(pic: "assets/images/category/beverages.jpeg",name: "Beverages"),
      Category(pic: "assets/images/category/petsfood.jpeg",name:"Pets Food"),
      Category(pic: "assets/images/category/medicines.jpeg",name: "Medicines")
    ];

    _fruitsandveg = [
      Items(name: "Ash Gourd" ,pic:"assets/images/fruitsandvegetables/ashgourd.jpeg",price: 100),
      Items(name: "Bitter Gourd" ,pic:"assets/images/fruitsandvegetables/bittergourd.jpeg",price: 100),
      Items(name: "Black Beans" ,pic:"assets/images/fruitsandvegetables/blackbeans.jpeg",price: 100),
      Items(name: "Black Eyed Beans" ,pic:"assets/images/fruitsandvegetables/blackeyed beans.jpeg",price: 100),
      Items(name: "Capsicum" ,pic:"assets/images/fruitsandvegetables/capsicum.jpeg",price: 100),
    ];
    _bakery = [
      Items(name: "Amul" ,pic:"assets/images/bakerycakesanddairy/amul.jpeg",price: 100),
      Items(name: "Britania" ,pic:"assets/images/bakerycakesanddairy/britania.jpeg",price: 100),
      Items(name: "Haldiram" ,pic:"assets/images/bakerycakesanddairy/haldiram.jpeg",price: 100),
      Items(name: "Milky Mist" ,pic:"assets/images/bakerycakesanddairy/milkymist.jpeg",price: 100),
      Items(name: "Parle" ,pic:"assets/images/bakerycakesanddairy/parle.jpeg",price: 100),
    ];
    _beverages = [
      Items(name: "Bru Green Label" ,pic:"assets/images/beverages/brugreenlabel.jpeg",price: 100),
      Items(name: "Cothas Coffee" ,pic:"assets/images/beverages/cothascoffee.jpeg",price: 100),
      Items(name: "Red Label Tea" ,pic:"assets/images/beverages/redlabeltea.jpeg",price: 100),
      Items(name: "Tetley Green Tea" ,pic:"assets/images/beverages/tetleygreentea.jpeg",price: 100),
      Items(name: "Three Roses Tea Dust",pic:"assets/images/beverages/threerosesteadust.jpeg",price: 100),
    ];
    _groceries = [
      Items(name: "Airel" ,pic:"assets/images/groceriesandstaples/airel.jpeg",price: 100),
      Items(name: "Gate Way" ,pic:"assets/images/groceriesandstaples/gateway.jpeg",price: 100),
      Items(name: "Indulekha" ,pic:"assets/images/groceriesandstaples/indulekha.jpeg",price: 100),
      Items(name: "Madhur" ,pic:"assets/images/groceriesandstaples/madhur.jpeg",price: 100),
      Items(name: "Tata",pic:"assets/images/groceriesandstaples/tata.jpeg",price: 100),
    ];
    _medicines = [
      Items(name: "Coming Soon" ,pic:"assets/images/medicines/comingsoon1.jpg",price: 100),
      Items(name: "Coming Soon" ,pic:"assets/images/medicines/comingsoon2.jpg",price: 100),
      Items(name: "Coming Soon" ,pic:"assets/images/medicines/comingsoon3.jpg",price: 100),
      Items(name: "Coming Soon" ,pic:"assets/images/medicines/comingsoon4.jpg",price: 100),
      Items(name: "Coming Soon",pic:"assets/images/medicines/comingsoon5.jpg",price: 100),
    ];
    _petsfood = [
      Items(name: "Coming Soon" ,pic:"assets/images/petsfood/comingsoon1.jpg",price: 100),
      Items(name: "Coming Soon" ,pic:"assets/images/petsfood/comingsoon2.jpg",price: 100),
      Items(name: "Coming Soon" ,pic:"assets/images/petsfood/comingsoon3.jpg",price: 100),
      Items(name: "Coming Soon" ,pic:"assets/images/petsfood/comingsoon4.jpg",price: 100),
      Items(name: "Coming Soon",pic:"assets/images/petsfood/comingsoon5.jpg",price: 100),
    ];
    notifyListeners();

  }

  List<Items> get fruitsandveg => _fruitsandveg;
  List<Items> get bakery => _bakery;
  List<Items> get beverages => _beverages;
  List<Items> get groceries => _groceries;
  List<Items> get medicines => _medicines;
  List<Items> get petsfood => _petsfood;
  List<Category> get category => _category;
  Items get activeItems => _activeItems;


}
