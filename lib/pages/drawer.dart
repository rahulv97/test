import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Rahul Verma"), accountEmail: Text("verma@gmail.com"), 
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://blog.hubspot.com/hubfs/How%20to%20Edit%20%26%20Customize%20User%20Roles%20in%20WordPress.jpeg"),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person, color: Colors.black,),
              title: Text("My Account", style: TextStyle(
                color: Colors.black,
              ),),
              
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.black,),
              title: Text("Home", style: TextStyle(
                color: Colors.black,
              ),),
              
            ),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.black,),
              title: Text("Settings", style: TextStyle(
                color: Colors.black,
              ),),
              
            ),

            ListTile(
              leading: Icon(Icons.logout_outlined, color: Colors.black,),
              title: Text("Logout", style: TextStyle(
                color: Colors.black,
              ),),
              
            ),

          ],
        ),
      );
  }
}