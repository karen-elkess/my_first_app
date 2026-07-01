import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_navigation_bar/bottom_nav_bar_screen.dart';
//import 'package:grocery_app/screens/home/home_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
             crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.exit_to_app)),
              Center(
                child: Image.asset("assets/images/Group.png" ,
                width: 150,
                height: 150,
                ),
              ),
              SizedBox(height: 45,),
              Text("Sign Up" ,
              style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.w600
              ),
              ),
              SizedBox(height: 11,),
              Text("Enter your credentials to continue" ,
              style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.w500,
               color: Color(0xff7C7C7C),
              ),
              ),
             SizedBox(height: 27,),
             Text("Username" ,
              style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w500,
               color: Color(0xff7C7C7C),
              ),
              ),
              TextFormField(
               decoration: InputDecoration(
                suffix: Icon(Icons.badge),
               ),
              ),
             SizedBox(height: 27,),
             Text("Email" ,
              style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w500,
               color: Color(0xff7C7C7C),
              ),
              ),
              TextFormField(
               decoration: InputDecoration(
                suffix: Icon(Icons.check),
               ),
              ),
              SizedBox(height: 27,),
             Text("Password" ,
              style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w500,
               color: Color(0xff7C7C7C),
              ),
              ),
              TextFormField(
               obscureText:true,
               decoration: InputDecoration(
                suffix: Icon(Icons.visibility),
               ),
              ),
              SizedBox(height: 15,),
              Row(
               children: [
                 Text("By continuing you agree to our ",
                 style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.w500,
               color: Color(0xff7C7C7C),
              ),
                 ),
                 Text("Terms of Service",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                   color: Color(0xff53B175),
                 ),
                 ),
               ],
              ),
              SizedBox(height: 9,),
                Row(
                children: [
                  Text("and ",
                  style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.w500,
               color: Color(0xff7C7C7C),
                    ),
                  ),
                   Text("Privacy Policy.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff53B175),
                ),
                ),
                ],
                ),
                SizedBox(height: 22,),
                
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=> BottomNavBarScreen())); 
                  },
                  child: Container(
                    width: 370,
                    height: 80,
                    decoration: BoxDecoration(
                       color: Color(0xff53B175),
                       borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Text("Sign Up" ,
                      style: TextStyle(
                        fontSize: 22 ,
                        fontWeight: FontWeight.w600 ,
                        color: Colors.white,
                      ),
                      ),
                    ),
                   ),
                ),
                
                 SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                  Text("Already have an account? ",
                  style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w800,
                    color: Color(0xff7C7C7C),
                   ),
                  ),
                   Text("Sign up",
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff53B175),
                      ),
                     ),
                    ],
                  ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}