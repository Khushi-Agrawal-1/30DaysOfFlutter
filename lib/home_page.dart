import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  final int days=31;
  final String name ="KHUSHI AGRAWAL IS BEST";

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
    ),
        ),
      );
      
  }
}