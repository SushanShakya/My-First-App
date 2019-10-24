import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/CustomerNames.dart';
import 'package:flutter_app/ui/pages/addPage/mainSubmissionForm.dart';

class HomePage extends StatelessWidget{
  List<Names> _CustomerList = [];
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubmissionForm()));
              },
          )
        ],
      ),
      body:
//      Center(
//        child: Text("No Notes To Show"),
//      ),
      ListView.builder(itemCount: 5,itemBuilder: (context, index){
        return ListTile(
          title: Text("This Shit is a task"),
        );
      }),
    );
  }

}