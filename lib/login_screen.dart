import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shesafe/components/custom_textfield.dart';
import 'package:shesafe/components/primary_button.dart';
import 'package:shesafe/components/secondary_button.dart';
import 'package:shesafe/utils/constants.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);


  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text(
                        "USER LOGIN",
                        style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    Image.asset(
                      'assets/logo.png',
                      height: 135,
                      width: 150,
                      ),
                    ],
                  ),
              ),
              
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextField(
                        hint: 'enter email',
                        prefix: Icon(Icons.person),
                        
                      ),
                      CustomTextField(
                      hint: 'enter password',
                      prefix: Icon(Icons.password),
                    
                    ),
                    PrimaryButton(
                      title: 'Register',
                      onPressed: (){},
                    ),
                    ],
                  ),
              ),
              Container(
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Frogot Password?",
                             style: TextStyle(fontSize: 16),
                            ),
                        SecondaryButton(title: "click here", onPressed: (){},),
                      ],
                   ),
              ),
            
              SecondaryButton(title: "Register new user", onPressed: (){},),
            ],
          ),
        ),),
    );
  }
}