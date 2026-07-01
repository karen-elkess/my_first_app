


import 'package:flutter/material.dart';
import 'package:grocery_app/core/widgets/add_button.dart';

class BeveragesCard extends StatelessWidget {
   final String name;
   final String information;
   final String price;
   final String imagepath;

  const BeveragesCard({super.key,required this.name,required this.information,required this.price,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child:
               Center(child:
                 Image.asset(imagepath))),
              SizedBox(height: 5,),
              Text(name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 2,),
              Text(information,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff7C7C7C),
              ), ),
              SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),),
                  AddButton(),
                ],
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}