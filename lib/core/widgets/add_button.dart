


import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50,height: 50,
      decoration: BoxDecoration(
        color: Color(0xff53B175),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Icon(Icons.add,
      color: Colors.white,
      size: 40,),
    );
  }
}