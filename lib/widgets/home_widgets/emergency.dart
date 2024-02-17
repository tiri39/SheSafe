import 'package:flutter/material.dart';
import 'package:shesafe/widgets/home_widgets/emergencies/ambulance_emergency.dart';
import 'package:shesafe/widgets/home_widgets/emergencies/fire_emergency.dart';
import 'package:shesafe/widgets/home_widgets/emergencies/police_emergency.dart';
import 'package:shesafe/widgets/home_widgets/emergencies/violence_emergency.dart';

class Emergency extends StatelessWidget{
  const Emergency({Key? key}):super(key:key);


  @override 
  Widget build(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FireEmergency(),
          ViolenceEmergency(),
        ],
      ),
    );
  }
}