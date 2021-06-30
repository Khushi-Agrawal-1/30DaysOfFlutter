import 'package:application_1/pages/home_page.dart';
import 'package:application_1/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      themeMode: ThemeMode.dark,
      //this is basically for light theme
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      // this is for dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,

      ), 
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),

      },
    ) ;   
  }
}