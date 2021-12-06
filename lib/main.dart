

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/screens/dog_walker_info.dart';
import 'package:interview_task/screens/chat_screen.dart';
import 'package:interview_task/screens/home_page/home_page.dart';
import 'package:interview_task/screens/onboarding_screen.dart';
import 'package:interview_task/screens/register_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Color(0xffF5F5F5),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF5F5F5))),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(color: Color(0xffF5F5F5)),
    ),
    ),
    debugShowCheckedModeBanner: false,
    routes: {
        '/' :(context) => OnboardingScreen(),
      '/register': (context) => RegisterPage(),
      '/homepage': (context) => HomePage(),
      '/chatScreen' : (context) => ChatScreen(),
      '/dogWalkerInfo' : (context) => DogWalkerInfo(),
    } ,
  )
  );
}



