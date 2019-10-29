import 'package:flutter/material.dart';

class ShowDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pressed"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(itemCount: 2,itemBuilder: (context,index){
        return Container(
          child: Text("shit"),
        );
      })
    );
  }

}