import 'package:application_1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool clickbtn = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
    setState(() {
      clickbtn = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      clickbtn = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                  "Welcome $name",
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter username",
                          labelText: "Username",
                        ),
                        
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }
                          else if (value.length < 6){
                            return "Password should be of minimum 6 characters";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 50.0,
                      ),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(clickbtn ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: clickbtn ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: clickbtn
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                          ),
                        ),
                      )

                      //  ElevatedButton(
                      //    child: Text("LOGIN",
                      //    style: TextStyle(
                      //      fontWeight: FontWeight.bold,
                      //    ),
                      //    ),
                      //    style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                      //    onPressed: () {
                      //      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //    },

                      //    )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
