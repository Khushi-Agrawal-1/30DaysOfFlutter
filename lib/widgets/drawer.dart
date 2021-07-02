import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.pinimg.com/736x/ff/34/bf/ff34bf39404bb07d23e0eb5406503d4e.jpg";

    return Drawer(
      child: Container(
        color: Colors.white70,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
               padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Khushi Agrawal"), 
                accountEmail: Text("emailid@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  ),
              ),
                ),

                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.purple,

                  ),
                  title: Text(
                    "HOME",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.purple,

                  ),
                  title: Text(
                    "PROFILE",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail_solid,
                    color: Colors.purple,

                  ),
                  title: Text(
                    "MAIL",
                    textScaleFactor: 1.1,
                    style: TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
          ],
          ),
      ),

    );
  }
}