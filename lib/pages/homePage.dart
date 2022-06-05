import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testproject/pages/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {


  
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myname = "What is my name?";
  TextEditingController editingController = TextEditingController();
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async{
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jass Arun Rahul"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(2),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
           /* child: ListTile(
              title: Text(data[index]["title"]),fdihfdifh fjhadif had dd difdifh adih
              leading: Image.network(data[index]["url"]),
            ),*/
            child: Column(
              children: <Widget>[
                Image.network(data[index]["url"], height: 80,),
                Text("${data[index]["id"]}", style: TextStyle(color: Colors.black),)
              ],
            ),

          );
        },
        itemCount: data.length,
        ),
      ),


      floatingActionButton: FloatingActionButton(onPressed: (() {
       Navigator.pushNamed(context, "/login", arguments: {
         "name": "Rahul"
       });
      }),
      child: Icon(Icons.done),
      ),

      drawer: const MyDrawer(),

    );
  }
}