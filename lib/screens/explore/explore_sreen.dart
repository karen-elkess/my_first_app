

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/beverages/beverages_screen.dart';
import 'package:grocery_app/screens/explore/widgets/category_card.dart';
import 'package:grocery_app/screens/explore/widgets/explore_header.dart';

class ExploreSreen extends StatelessWidget {
  const ExploreSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Find Products',
              style: TextStyle(
        color: Colors.black,   
        fontWeight: FontWeight.bold,
        fontSize: 25, 
              ),
            ), 
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 8),
        child: SafeArea(
          child: Column(
             children: [
              ExploreHeader(),
              SizedBox(height: 15,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: .95,
                  children: [
                
                    CategoryCard(title: "Fresh Fruits\n & Vegetable",
                 imagepath: "assets/images/vegetables_card.png",
                  cardColor: Color(0xff53B175B2),
                  onTap: (){}, ), 
                        
                    CategoryCard(title: "Cooking Oil\n& Ghee", imagepath: "assets/images/oils_card.png", cardColor: Color(0xff53B175), onTap: (){}),
                    CategoryCard(title: "Meat & Fish", imagepath: "assets/images/meat_fish_card.png", cardColor: Color(0xffF7A593), onTap: (){}),
                    CategoryCard(title: "Bakery & Snacks", imagepath: "assets/images/bakery_card.png", cardColor: Color(0xffD3B0E0), onTap: (){}),
                    CategoryCard(title: "Dairy & Eggs", imagepath: "assets/images/dairy_eggs_card.png", cardColor: Color(0xffFDE598), onTap: (){}),
                    CategoryCard(title: "Beverages", imagepath: "assets/images/bevarges_card.png", cardColor: Color(0xffB7DFF5), onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BeveragesScreen()));
                         }),
                        ],
                 ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}