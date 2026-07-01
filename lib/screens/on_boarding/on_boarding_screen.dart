


import 'package:flutter/material.dart';
import 'package:grocery_app/core/widgets/custom_button.dart';
import 'package:grocery_app/screens/login/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image :DecorationImage(
          image: Image.asset("assets/images/on_boarding.png").image
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.end, //list
             children: [
                Image.asset("assets/images/white.png"),
                SizedBox(height: 30,),
                Text("Welcome\n to our store" ,
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.center,
                ),
                Text("Ger your groceries in as fast as one hour",
                style:TextStyle(
                  fontSize:16,
                  color: Color(0xffFCFCFCB2).withValues(alpha: .70)
                ),
                ),
                 SizedBox(height: 30,),
                
                CustomButton(title: "Get Started",
                onTap: () {
                  Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                ),
                SizedBox(height: 90,)
             ],
          ),
        ),
      ),
    );
  }
}