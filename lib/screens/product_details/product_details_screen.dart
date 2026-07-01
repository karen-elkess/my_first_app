

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_details/widgets/details_header.dart';
import 'package:grocery_app/screens/product_details/widgets/expandablee_text.dart';
import 'package:grocery_app/screens/product_details/widgets/product_details_lower_body.dart';
import 'package:grocery_app/screens/product_details/widgets/product_details_upper_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(    //مفيش app bar
     body: Column(
      children: [
        DetailsHeader(),
        SizedBox(height: 20,),
        ProductDetailsBody(),
        ExpandableeText(),
        ProductDetailsLowerBody(),
       ],
     ),
    );
  }
}