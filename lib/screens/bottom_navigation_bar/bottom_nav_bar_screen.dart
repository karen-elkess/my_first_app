

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/screens/cart/cart_screen.dart';
import 'package:grocery_app/screens/explore/explore_sreen.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/screens/login/login_screen.dart';
//import 'package:grocery_app/screens/product_details/product_details_screen.dart';


class BottomNavBarScreen extends StatefulWidget {
   const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeindex = 0;
  List<Widget> screens=[
  HomeScreen(),
  ExploreSreen(),
  CartScreen(),
  Center( child: Text("Favourites"),),
  Center( child: Text("account"),),
  //نكتب بقى 6 سكرينات عشات يظهروا في ال 5 اماكن بتوع navigationbar
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : screens[activeindex],
      bottomNavigationBar:BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,
        currentIndex: activeindex ,
        selectedItemColor: Color(0xff53B175) ,
        onTap:(index){
          setState(() {
            activeindex=index;
          });
        } ,
        items:[

            BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/icons/shop_icon.svg",
          colorFilter:
           activeindex==0?ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn): null,
          ),
          label: "shop",
           ),
           BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/icons/explore_icon.svg",
             colorFilter:
           activeindex==1?ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn): null,
          ),
          
          label: "explorer", 
           ),

           BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/icons/cart_icon.svg",
           colorFilter:
           activeindex==2?ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn): null,
          ),
          label: "Cart",
           ),

           BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/icons/fav_icon.svg",
           colorFilter:
           activeindex==3?ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn): null,
          ),
          label: "favourites",
           ),

            BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/icons/user_icon.svg",
            colorFilter:
           activeindex==4?ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn): null,
          ),
          label: "account",
           ),
        ] 
        ) , //widget in flutter , attributes\\ constructor
    );
  }
}