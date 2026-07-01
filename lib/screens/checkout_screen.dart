


import 'package:flutter/material.dart';
import 'package:grocery_app/core/widgets/custom_button.dart';
import 'package:grocery_app/screens/home/home_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Checkout",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                          SizedBox(width: 190,),
                          Icon(Icons.close_outlined),
                           SizedBox(height: 30,),
                           Divider(
                           color: Colors.black,
                           ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(),
                      SizedBox(height: 11,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Drlievery",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7C7C7C),
                                ),
                                ),
                                  
                                Row(
                                  children: [
                                    Text("Select Method",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff181725),
                                    ),
                                    ),
                                    SizedBox(width: 10,),
                                Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ],
                      ),
                        SizedBox(height: 10,),
                        Divider(),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7C7C7C),
                                ),
                                ),
                                 
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/images/card.png"),
                                  SizedBox(width: 10,),
                                Icon(Icons.arrow_forward_ios)
                                  ]
                                ), 
                        ],
                      ),
                        SizedBox(height: 10,),
                        Divider(),
                      SizedBox(height: 11,),
                      Row(
                         mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Promo Code",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7C7C7C),
                                ),
                                ),
                                  
                                Row(
                                   mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Pick discount",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff181725),
                                    ),
                                    ),
                                     SizedBox(width: 10,),
                                Icon(Icons.arrow_forward_ios)
                                  ],
                                ), 
                        ],
                      ),
                        SizedBox(height: 10,),
                        Divider(),
                    
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Cost",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7C7C7C),
                                ),
                                ),
                                 
                               Row(
                                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("\$13.97",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff181725),
                                    ),
                                    ),
                                     SizedBox(width: 10,),
                                Icon(Icons.arrow_forward_ios)
                                 ],
                               ),
                               
                        ],
                      ),
                        SizedBox(height: 10,),
                        Divider(),
                      SizedBox(height:15 ,),
                       Row(
                         children: [
                           Text("By placing an order you agree to our",
                           style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7C7C7C),
                                    ),
                                     ),
                         ],
                       ),
                                 Row(
                                  children: [
                                    Text("Terms",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    SizedBox(width: 3,),
                                    Text("and",
                                   style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7C7C7C),
                                    ),
                                     ),
                                     SizedBox(width: 3,),
                                      Text("Conditions",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  ],
                                 ),
                                 SizedBox(height: 10,),
                                 CustomButton(title: "Place Order",
                                 onTap: () {
                                   Navigator.push(context,
                                  MaterialPageRoute(builder:(context)=> HomeScreen()));
                                 },)
                    ],
                  ),
                ),
              );
  }
}