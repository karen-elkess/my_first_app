import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_navigation_bar/bottom_nav_bar_screen.dart';
import 'package:grocery_app/screens/login/login_screen.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: BottomNavBarScreen(),
       
    );
  }
}