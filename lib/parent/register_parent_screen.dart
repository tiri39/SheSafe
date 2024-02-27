import 'package:flutter/material.dart';
import 'package:shesafe/components/custom_textfield.dart';
import 'package:shesafe/components/primary_button.dart';
import 'package:shesafe/components/secondary_button.dart';
import 'package:shesafe/child/child_login_screen.dart';
import 'package:shesafe/utils/constants.dart';

class RegisterParentScreen extends StatefulWidget{
  @override
  State<RegisterParentScreen> createState() => _RegisterParentScreenState();
}

class _RegisterParentScreenState extends State<RegisterParentScreen> {
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                      height: MediaQuery.of(context).size.height*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Text(
                              "REGISTER AS PARENT",
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
                  height: MediaQuery.of(context).size.height*0.95,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTextField(
                            hint: 'enter name',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.name,
                            prefix: Icon(Icons.person),
                            onsave: (name){
                              _formData['name'] = name ?? "";
                            },
                            validate: (name){
                              if(name!.isEmpty || name.length<3){
                                return 'enter correct name';
                              }
                              return null;
                            },
                          ),
                          CustomTextField(
                            hint: 'enter phone',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.phone,
                            prefix: Icon(Icons.phone),
                            onsave: (phone){
                              _formData['phone'] = phone ?? "";
                            },
                            validate: (phone){
                              if(phone!.isEmpty || phone.length<11){
                                return 'enter correct phone';
                              }
                              return null;
                            },
                          ),
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
                            hint: 'enter child email',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.emailAddress,
                            prefix: Icon(Icons.email),
                            onsave: (cemail){
                              _formData['cemail'] = cemail ?? "";
                            },
                            validate: (cemail){
                              if(cemail!.isEmpty || cemail.length<3 || !cemail.contains('@')){
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
                        CustomTextField(
                          hint: 'retype password',
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
                          title: 'REGISTER',
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                            _onSubmit();}
                          },
                        ),
                        ],
                      ),
                    ),
                ),
                
              
                SecondaryButton(title: "Login with your account", onPressed: (){
                  goTo(context, LoginScreen());
            
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}