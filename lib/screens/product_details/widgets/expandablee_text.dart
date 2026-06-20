 

  import 'package:flutter/material.dart';

class ExpandableeText extends StatefulWidget {
  const ExpandableeText({super.key});

  @override
  State<ExpandableeText> createState() => _ExpandableeTextState();
}

class _ExpandableeTextState extends State<ExpandableeText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Product Detail"),
              Icon(Icons.arrow_downward),
            ],
          ) ,
          Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.")
     
      ],
    );
  }
}