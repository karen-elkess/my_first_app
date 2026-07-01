 

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
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
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
                  Text("Product Detail",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                  Icon(Icons.arrow_downward_outlined,),
                ],
              ),
           ) ,
             if(showDescrebtionText)
            Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet." ,
               style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xff7C7C7C)
               ),
                //textstyle
                ),
                SizedBox(height: 10,),
                Divider()
        ],
      ),
    );
  }
}