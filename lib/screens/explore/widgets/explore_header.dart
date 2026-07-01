


import 'package:flutter/material.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Search Store",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
             prefixIcon: Icon(Icons.search),
             filled: true,
              fillColor: Color(0xffF2F3F2),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15) ,
              ),
              
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            )
            ),
            ),
            ]
          );
        } 
}