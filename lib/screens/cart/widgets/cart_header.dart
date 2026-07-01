


import 'package:flutter/material.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      automaticallyImplyLeading: false,
      title: Center(child: Text("My Cart",
      style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600
      ),
      )
      ),
    );
  }
}