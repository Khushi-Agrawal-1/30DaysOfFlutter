import 'package:application_1/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  final int days=31;
  final String name ="KHUSHI AGRAWAL";

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      ),
        body: Center(
          child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
    ),
        ),
        drawer: MyDrawer(),
      );
      
  }
}