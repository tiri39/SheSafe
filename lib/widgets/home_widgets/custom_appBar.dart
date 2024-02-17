import 'package:flutter/material.dart';
import 'package:shesafe/utils/quotes.dart';

class CustomAppBar extends StatelessWidget{
  //const CustomAppBar({super.key});

  Function? onTap;
  int? quoteIndex;
  CustomAppBar({this.onTap, this.quoteIndex});

  @override 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        onTap!();
      },
      child: Container(
        child: Text(
          quotes[quoteIndex!],
          style: TextStyle(
            fontSize: 22,
          ),),
      
        
      ),
    );
  }
}