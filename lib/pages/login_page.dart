import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.fill,
            ),
            SizedBox(
              height: 30.0,

            ),
            Text(
        "Welcome to the Login Page",
        style: TextStyle(
          fontSize: 26,
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),

      ),
      SizedBox(
              height: 25.0,

            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                 SizedBox(
              height: 30.0,

            ), 
               ElevatedButton(
                 child: Text("LOGIN"),
                 style: TextButton.styleFrom(), 
                 onPressed: () {
                   print("U pressed Login");
                 },
                 
                 )

                ],

              ),
            )
        ],
      )
      
      );

 
      
    
  }
}