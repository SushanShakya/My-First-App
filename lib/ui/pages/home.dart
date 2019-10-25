import 'package:flutter/material.dart';
//import 'package:flutter_app/ui/pages/Welcome/welcome.dart';
import 'package:flutter_app/ui/pages/addPage/mainSubmissionForm.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tailor\'s Notes"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.deepPurple,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MeasurementForm()));
            },
            child: Icon(Icons.add),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: Center(
        child: Text("No Notes To Show"),
      ),
    );
  }

}