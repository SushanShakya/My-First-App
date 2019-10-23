import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tailor\'s Notes"),
      ),
      body: Center(
        child: Text("No Notes To Show"),
      ),
    );
  }

}