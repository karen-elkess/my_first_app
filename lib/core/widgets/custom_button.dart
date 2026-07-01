

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String title ;
  const CustomButton({super.key , this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
               onTap: onTap ,
                child: Container(
                  width: 370,
                  height: 85,   
              decoration: BoxDecoration(
                  color:  Color(0xff53B175),
                  borderRadius: BorderRadius.circular(14),
                 ),
                  child: Align(
                   child: Text(title ,
                      style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500 ,
                      color: Colors.white,
                         ),
                       ),
                    ) ,
                  ),
                ); 
  }
}