import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/screens/register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                SizedBox(height: 20,),

                Center(
                  child: Image.asset("assets/images/Group.png" ,
                  width: 120,
                  height: 120,
                  ),
                ),
                SizedBox(height: 55,) ,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Login" ,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700 ,
                  ),
                  ),
                ),
                
                Text("Enter your emails and password" ,
                style: TextStyle(
                  fontSize:20 ,
                  fontWeight:FontWeight.w400 ,
                  color: Color.fromARGB(255, 157, 154, 154),
                ),
                ),
                SizedBox(height:40,),
                Text("Email",
                style: TextStyle(
                  fontSize:25 ,
                  fontWeight:FontWeight.w500 ,
                  color: Colors.grey,
                ),
                ),
                TextFormField(
                decoration: InputDecoration(
                  suffix: Icon(Icons.email),
                ),
                ),
                SizedBox(height:40,),
                Text("Password",
                style: TextStyle(
                  fontSize:25 ,
                  fontWeight:FontWeight.w500 ,
                  color: Colors.grey,
                ),
                ),
                TextFormField(
                  obscureText: true,
                decoration: InputDecoration(
                  suffix: Icon(Icons.visibility),
                ),
                ),
                SizedBox(height: 25,),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Forgot Password?" ,
                  style: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                ),
                SizedBox(height: 15,),
                
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=> RegisterScreen()));
                  },
                  child: Container(
                    width: 370,
                    height: 85,
                    
                    decoration: BoxDecoration(
                     color:  Color(0xff53B175),
                     borderRadius: BorderRadius.circular(14),
                     ),
                    child: Align(
                      child: Text("Log in" ,
                                      style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500 ,
                      color: Colors.white,
                                      ),
                                      ),
                    ) ,
                  ),
                ),
                
                SizedBox(height: 22,),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text("Don’t have an account?" ,
                style: TextStyle(
                  fontSize:18 ,
                  fontWeight:FontWeight.w500 ,
                ),
                ),
                Text(" Signup",
                style: TextStyle(
                  fontSize:18 ,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff53B175),
                ),
                )
                 ]
                )
              ],
            ),
        ),
      ),
      ),
    );
  }
}