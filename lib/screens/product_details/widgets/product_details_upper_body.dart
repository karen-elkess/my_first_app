


import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child:  Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Naturel Red Apple",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),),
              Icon(Icons.favorite_border_outlined,
              color: Color(0xff7C7C7C),),
            ],
          ),
          Text("1kg, Price",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff7C7C7C)
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed:(){} , icon:Icon(Icons.remove)),
                  SizedBox(width: 10),
                  Container(
                 width: 45, height: 45,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15), 
                  border: Border.all(
                  color: Colors.grey.shade300,
                    ),
                    ),
                    child: const Center(
                       child: Text('1', 
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                     color: Colors.black,
                         ),
                       ),),
                   ),
                      const SizedBox(width: 10),
                    IconButton(onPressed:() {},
                     icon: const Icon(
                       Icons.add,
                  color: Color(0xff53B175), 
                  size: 28,
                   ),
                 ),
                ],
              ),
              Text("\$4.99",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),),
              
            ],
          ),
          SizedBox(height: 20,),
          Divider(),
        
         ],
      ),
    );
  }
}