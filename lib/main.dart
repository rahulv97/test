import 'package:flutter/material.dart';
import 'package:testproject/pages/homePage.dart';
import 'package:testproject/pages/loginPage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Arun Jass",
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),

    routes: {
      "/login":(context) => LoginPage(),
      "/home":(context) => HomePage(),
    },

  ));
}
