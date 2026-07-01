

import 'package:flutter/material.dart';
import 'package:grocery_app/core/widgets/custom_button.dart';
import 'package:grocery_app/screens/cart/widgets/cart_header.dart';
import 'package:grocery_app/screens/cart/widgets/cart_objects.dart';
import 'package:grocery_app/screens/checkout_screen.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body:SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CartHeader(),
          Divider(),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              mainAxisExtent:130 ,
              crossAxisSpacing: 2,
              children: [
            CartObjects(imagepath: "assets/images/peppers.png", name:"Bell Pepper Red" , details: "1kg, Price", price: "\$4.99"),
            CartObjects(imagepath: "assets/images/egg.png", name: "Egg Chicken Red", details: "4pcs, Price", price: "\$1.99"),
            CartObjects(imagepath: "assets/images/banana.png", name:"Organic Bananas", details: "12kg, Price", price: "\$3.00"),
            CartObjects(imagepath: "assets/images/gingers.png", name: "Ginger", details: "250gm, Price", price:"\$2.99"),
            ],
            ),
          ),
            CustomButton(
              title: "Go To Checkout",
              onTap: (){
                showModalBottomSheet(context: context,
                 builder: (context){
                 return CheckoutScreen();
              });
                },
            ),
          ],
        ),
      ),
    ),
    );
  }
}