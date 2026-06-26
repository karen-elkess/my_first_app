 

  import 'package:flutter/material.dart';

class ExpandableeText extends StatefulWidget {
  const ExpandableeText({super.key});

  @override
  State<ExpandableeText> createState() => _ExpandableeTextState();
}

class _ExpandableeTextState extends State<ExpandableeText> {
  bool showDescrebtionText=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         InkWell(
          onTap:(){
           setState(() {
             showDescrebtionText=!showDescrebtionText;
           });
          },
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Product Detail"),
                Icon(Icons.arrow_downward),
              ],
            ),
         ) ,
           if(showDescrebtionText)
          Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet." ,
              //textstyle
              )
     
      ],
    );
  }
}