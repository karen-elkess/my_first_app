


import 'package:flutter/material.dart';
import 'package:grocery_app/core/widgets/custom_button.dart';

class ProductDetailsLowerBody extends StatelessWidget {
  const ProductDetailsLowerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nutritions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Text("100gr",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
          SizedBox(height: 5,),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Review",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star,
                  color: Color(0xffF3603F),),
                   Icon(Icons.star,
                  color: Color(0xffF3603F),),
                   Icon(Icons.star,
                  color: Color(0xffF3603F),),
                   Icon(Icons.star,
                  color: Color(0xffF3603F),),
                   Icon(Icons.star,
                  color: Color(0xffF3603F),),
                    SizedBox(width: 15,),
                  Icon(Icons.arrow_forward_ios)
                ]
              ),
            ]
          ),
           SizedBox(height: 15,),
           CustomButton(title: "Add To Basket")
        ],
      ),
    );
  }
}