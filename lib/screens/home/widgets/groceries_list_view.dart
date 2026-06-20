 

 import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/widgets/category_item.dart';

class GroceriesListView extends StatelessWidget {
  const GroceriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       ListView.separated(
        scrollDirection: Axis.horizontal,
    
         itemBuilder: (context, index)=> CategoryItem(),
         separatorBuilder: (context, index) => 
         SizedBox(width: 10,),
         itemCount: 4,
      );
    
  }
}
  