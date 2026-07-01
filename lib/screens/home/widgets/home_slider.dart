import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class HomeSlider extends StatefulWidget {
  const  HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
   List<String> images=[
   'assets/images/slider_img.webp' ,
   'assets/images/slider_img2.webp',
   'assets/images/slider_img2.webp',
   ];

   int activeindex = 0;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(height:140.0,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          onPageChanged:(index, reason) {
            setState(() {
              activeindex = index;
            });
          } ,
          ),
          items: images.map((image) {
          return Image.asset(image);
         
          }) .toList()
        ),
          Positioned(
           bottom: 15,
           left: 190,
          
            child: AnimatedSmoothIndicator(    
               activeIndex: activeindex,    
               count: images.length,    
               effect:ExpandingDotsEffect(
                activeDotColor: Color(0xff53B175),
               dotColor: Colors.grey
                ), 
            ),
          )
      ]
    );     
  }
}