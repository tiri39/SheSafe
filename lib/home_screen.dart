import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shesafe/widgets/custom_appBar.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({super.key});
  int  qIndex = 0;

  getRandomQuotes() {
    Random random = Random();
    
    setState(() {
      qIndex = random.nextInt(6);
    });
  }

  @override
  void initState(){
    getRandomQuotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(
                quoteIndex : qIndex,
                onTap: getRandomQuotes,

              ),
            ],),
        ),
      )
    );
  }
}