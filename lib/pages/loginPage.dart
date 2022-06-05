import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Login Here!"),
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.exit_to_app_rounded))
        ],
      ),

    body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset("assets/r.jpeg", fit: BoxFit.cover, color: Colors.black.withOpacity(0.4), colorBlendMode: BlendMode.colorBurn,),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 55, bottom: 20),
            child: Card(
             child: Container(
               width: MediaQuery.of(context).size.width,
             ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          
        
          
        )
      ],
    ),

    );
  }
}