 


 import 'package:flutter/material.dart';
import 'package:grocery_app/screens/beverages/widgets/beverages_card.dart';
import 'package:grocery_app/screens/beverages/widgets/beverages_header.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              
              children: [
                BeveragesHeader(),
                SizedBox(height: 25,),
                Expanded(
                  child: GridView.count(
                    crossAxisCount:2 ,
                    mainAxisExtent: 260,
                    crossAxisSpacing: 2,
                    children: [
                  BeveragesCard(name: "Diet Coke", information: "355ml, Price", price: "\$1.99", imagepath:"assets/images/coke.png"),
                  BeveragesCard(name: "Sprite Can", information: "325ml, Price", price: "\$1.50", imagepath: "assets/images/sprite.png"),
                  BeveragesCard(name: "Apple & Grape \nJuice", information: "2L, Price",price: "\$15.99", imagepath: "assets/images/tree-top-juice-apple-grape-64oz 1.png"),
                  BeveragesCard(name: "Orenge Juice", information: "2L, Price", price:"\$15.99", imagepath: "assets/images/tree-top-juice-apple-grape-64oz 1 (1).png"),
                  BeveragesCard(name: "Coca Cola Can", information: "325ml, Price", price: "\$4.99", imagepath: "assets/images/cocala.png"),
                  BeveragesCard(name: "Pepsi Can", information: "330ml, Price", price: "\$4.99", imagepath: "assets/images/pepsi.png"),
                                
                  ], ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}