


import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

   final String title ;
   final String imagepath;
   final Color cardColor; //////////////
   final VoidCallback onTap;

    const CategoryCard({super.key,
    required this.title,
    required this.imagepath,
    required this.cardColor,
    required this.onTap,
    });
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: cardColor),
            color: cardColor.withValues(alpha: .25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imagepath,
              fit: BoxFit.contain,),
              SizedBox(height: 15,),
              Text(title,
              style: TextStyle(
                fontSize:20 ,
                fontWeight: FontWeight.w600 ,
                color: Color(0xff181725),
              ),),
            ],
          ),
           
        ),
      ),
    );
  }
}