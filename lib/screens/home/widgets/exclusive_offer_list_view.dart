import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/widgets/product_item.dart';
import 'package:grocery_app/screens/product_details/product_details_screen.dart';

class ExclusiveOfferListView extends StatelessWidget {
  const ExclusiveOfferListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
    
         itemBuilder: (context, index)=> InkWell(
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>ProductDetailsScreen()),
            );
          },
          child: ProductItem()),
         separatorBuilder: (context, index) => 
         SizedBox(width: 10,),
         itemCount: 9,
      ),
    );
  }
}