


import 'package:flutter/material.dart';

class BeveragesHeader extends StatelessWidget {
  const BeveragesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        Text("Beverages",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        ),
        Icon(Icons.tune)
      ],
    );
  }
}