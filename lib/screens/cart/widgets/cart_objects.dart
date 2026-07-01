



import 'package:flutter/material.dart';

class CartObjects extends StatelessWidget {
  final String imagepath;
  final String name;
  final String details;
  final String price;
  const CartObjects({super.key,required this.imagepath,required this.name,required this.details,required this.price});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
           children: [
            Expanded(
              child: Image.asset(imagepath,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 5,),
               
                 Text(details,
                 style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                 ),
                ),
                Row(
                  
                  children: [
                    IconButton(onPressed:(){} , icon:Icon(Icons.remove)),
                 
                        SizedBox(width: 10),
                    Container(
                       width: 35, height: 35,
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
                        size: 26,
                         ),
                       ),
                         ],
                   ),
                   ],
                    ),
                    SizedBox(width: 70,),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                      Icon(Icons.close,
                color: Colors.grey,
                size: 25,),
                SizedBox(height: 45,),
                    Text(price,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                    ),),  
                  ],
                 ), 
               ] 
             ),
            
              Divider(height: 30,),
              
        ],
      ),
    );
      
  }
}