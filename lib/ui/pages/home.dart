//import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flutter_app/ui/pages/CustomerNames.dart';
import 'package:flutter_app/ui/pages/addPage/mainSubmissionForm.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//  List <Names> _CustomerNames = [];
//  List _RandomColors = [];
//  var _random ;
//
//  @override
//  void initState() {
//    super.initState();
//    _RandomColors = [Colors.brown, Colors.tealAccent, Colors.pinkAccent];
//    _random = Random();
//  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Tailor\'s Notes"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add, color: Colors.black, size: 30.0,),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SubmissionForm())
                ); //Navigator
              },
          )
        ],
      ),
      body:
      Center(
        child: Text("No Notes To Show"),
      ),
//      ListView.builder(itemCount: 5,itemBuilder: (context, index){
//        return ListTile(
//          title: Text("index"),
//        );
//      }),
    );
  }
}

//Might use this part of the code later

//class showPage{}
//class editPage{}
//class deletePage{}
//class markDone{}