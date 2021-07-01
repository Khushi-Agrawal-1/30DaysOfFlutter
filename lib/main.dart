import 'package:application_1/pages/home_page.dart';
import 'package:application_1/pages/login_page.dart';
import 'package:application_1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      themeMode: ThemeMode.light,
      //this is basically for light theme
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      // this is for dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,

      ), 
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),

      },
    ) ;   
  }
}