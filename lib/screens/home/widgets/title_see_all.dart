
import 'package:flutter/material.dart';

class TitleSeeAll extends StatelessWidget { //titleseeall immutable يعني صعب تتغير ف الذاكرة 
   final String title;
   const TitleSeeAll({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text( title ,
                 style:TextStyle(
                  fontSize:24 ,
                  fontWeight: FontWeight.w600,
                 )
                 ) ,
                  Text("See all" ,
                 style:TextStyle(
                  fontSize:18 ,
                  color: Color(0xff53B175),
                  fontWeight: FontWeight.w600,
                 )
                ),
              ],
             );
  }
}