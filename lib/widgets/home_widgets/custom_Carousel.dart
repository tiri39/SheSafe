import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shesafe/utils/quotes.dart';
import 'package:shesafe/widgets/home_widgets/safewebview.dart';


class CustomCarousel extends StatelessWidget{
  const CustomCarousel({Key? key}):super(key:key);


  void navigateTo(BuildContext context, Widget route){
    Navigator.push(context, CupertinoPageRoute(builder: (context) => route));
  }

  @override 
  Widget build(BuildContext context){
    return Container(
      child : CarouselSlider(
        items: List.generate(
          imageSliders.length, 
          (index) => Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: (){
                  if(index == 0){
                    navigateTo(
                      context, 
                      SafeWebView(
                        url:  "https://www.tbsnews.net/women-empowerment/inspiring-bangladeshi-women-recent-times-whom-you-need-know-254668",
                      ));
                  }
                  else if(index == 1){
                    navigateTo(
                      context, 
                      SafeWebView(
                        url:  "https://www.e-ir.info/2012/04/30/violence-against-women-in-bangladesh/",
                      ));
                  }
                  else if(index == 2){
                    navigateTo(
                      context, 
                      SafeWebView(
                        url:  "https://www.entrepreneur.com/leadership/10-reasons-women-should-become-agents-of-change-in-their/448095",
                      ));
                  }
                  else if(index == 3){
                    navigateTo(
                      context, 
                      SafeWebView(
                        url: "https://unb.com.bd/category/Bangladesh/legendary-women-in-bangladesh-with-pioneering-contribution-in-diverse-fields/65830",

                      ));
                  }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageSliders[index],
                      )),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.transparent,],
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom : 8, left: 8),
                      child: Text(
                        articleTitle[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color : Colors.white,
                          fontSize: MediaQuery.of(context).size.width*0.05,)),
                    ),
                  ),
                ),
                
              ),
            ),
          ), 
          ), 
        options: CarouselOptions(
        aspectRatio: 2.0,
        autoPlay: true,
        enlargeCenterPage: true,

      ))
    );
  }
}