import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PoliceEmergency extends StatelessWidget{
  
  _callNumber(String number) async{
  await FlutterPhoneDirectCaller.callNumber(number);
  }


  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap:() => _callNumber('999'),
          child: Container(
            height: 180,
            width: MediaQuery.of(context).size.width*0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 88, 32, 190),
                  Color.fromARGB(255, 105, 76, 160),
                  Color.fromARGB(255, 185, 163, 225),
                  ]
                ,)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset('assets/police.png'),
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.5),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Police Emergency",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.06)),
                        Text("call 9-9-9 for police",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width*0.045)),
                        Container(
                          height: 30,
                          width: 80,
                          
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "9-9-9",
                          style: TextStyle(
                          color: Color.fromARGB(255, 72, 17, 105),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.055),
                          textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}