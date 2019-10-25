import 'package:flutter/material.dart';

class SubmissionForm extends StatefulWidget{
  @override
  _SubmissionFormState createState() => _SubmissionFormState();
}

class _SubmissionFormState extends State<SubmissionForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
      body:

      Container(
        margin: EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30.0,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Shit"
              ),
            )
          ],
        ),
      ),
    );
  }
}