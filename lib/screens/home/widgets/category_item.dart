

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         color: Color(0xffF8A44C),
          
      ),
       child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
       Image.asset("assets/images/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png" ,
                width: 70,
                height: 60,
            ), 
             SizedBox(width: 15),
            Text("Pulses" ,
                style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600 ,
                      color: Colors.black,
                    ),
                )
        ],
      ),
    ) ;
  }
}