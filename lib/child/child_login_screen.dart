import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shesafe/components/custom_textfield.dart';
import 'package:shesafe/components/primary_button.dart';
import 'package:shesafe/components/secondary_button.dart';
import 'package:shesafe/parent/register_parent_screen.dart';
import 'package:shesafe/utils/constants.dart';
import 'package:shesafe/child/register_child.dart';

class LoginScreen extends StatefulWidget{
  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordShown = true;
  final _formKey = GlobalKey<FormState>();
  final _formData = Map<String, Object>();


  _onSubmit(){
    _formKey.currentState!.save();
    print(_formData['email']);
    print(_formData['password']);
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
                  height: MediaQuery.of(context).size.height*0.55,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTextField(
                            hint: 'enter email',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.emailAddress,
                            prefix: Icon(Icons.email),
                            onsave: (email){
                              _formData['email'] = email ?? "";
                            },
                            validate: (email){
                              if(email!.isEmpty || email.length<3 || !email.contains('@')){
                                return 'enter correct email';
                              }
                              return null;
                            },
                          ),
                          CustomTextField(
                          hint: 'enter password',
                          prefix: Icon(Icons.vpn_key_rounded),
                          onsave: (password){
                            _formData['password'] = password ?? "";
                           },
                          validate: (password){
                              if(password!.isEmpty || password.length<7){
                                return 'enter correct password';
                              }
                              return null;
                            },
                          suffix: IconButton(onPressed: (){
                            setState(() {
                              isPasswordShown = !isPasswordShown;
                      
                            });
                            
                          }, icon: isPasswordShown
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility)),
                        
                        ),
                        PrimaryButton(
                          title: 'LOGIN',
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                            _onSubmit();}
                          },
                        ),
                        ],
                      ),
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
              
                SecondaryButton(title: "Register as Child", onPressed: (){
                  goTo(context, RegisterChildScreen());
            
                },),
                SecondaryButton(title: "Register as Parent", onPressed: (){
                  goTo(context, RegisterParentScreen());
            
                },),
              ],
            ),
          ),
        ),),
    );
  }
}