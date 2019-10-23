import 'package:flutter/material.dart';

class form extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New"),
        actions: <Widget>[
          FlatButton(
              textColor: Colors.black ,
              onPressed: (){},
              child: Text("Save"),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          )
        ],
      ),
    );
  }

}