import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shesafe/widgets/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shesafe/child/child_login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.firaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3:true,
      ),
      home: LoginScreen());
  }
}

