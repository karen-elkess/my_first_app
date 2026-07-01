//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/widgets/exclusive_offer_list_view.dart';
import 'package:grocery_app/screens/home/widgets/groceries_list_view.dart';
import 'package:grocery_app/screens/home/widgets/home_header.dart';
import 'package:grocery_app/screens/home/widgets/home_slider.dart';
//product_item
import 'package:grocery_app/screens/home/widgets/search_field.dart';
import 'package:grocery_app/screens/home/widgets/title_see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
             HomeHeader(),
              SizedBox(height: 20,) ,
             SearchField(),
               SizedBox(height: 30,),
               HomeSlider(),
              SizedBox(height: 30,),
             TitleSeeAll(
              title: "Exclusive Offer",
             ),
             SizedBox(height: 30,),
             ExclusiveOfferListView(),
             SizedBox(height: 30,),
             TitleSeeAll(
              title: "Best Selling",
             ),
             SizedBox(height: 30,),
             ExclusiveOfferListView(),
              SizedBox(height: 30,),
             TitleSeeAll(
              title: "Groceries",
               ),
               SizedBox(
                height: 100,
                child: GroceriesListView(),
               ),
                SizedBox(height: 30,),
             ExclusiveOfferListView(),
            ],
          ),
        ),
      ),
    );
  }
} 
