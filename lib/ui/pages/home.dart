
import 'package:flutter/material.dart';
//import 'package:flutter_app/ui/DatabaseHelper.dart';
import 'package:flutter_app/ui/pages/Details.dart';
import 'package:flutter_app/ui/pages/InheritedWidget/NoteInherit.dart';
import 'package:flutter_app/ui/pages/addPage/mainSubmissionForm.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> get _notes => DetailInheritedWidget.of(context).notes;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Tailor\'s Notes",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
              fontWeight: FontWeight.w600,
          ),),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon :Icon(Icons.android, color: Colors.cyan),

          ),
        ],
      ),
      body:
//        FutureBuilder(
//          future: Connector.getDetails(),
//          builder: (context, snapshot){
//        if(snapshot.connectionState == ConnectionState.done){
//          final notes = snapshot.data;
        _notes.length > 0 ? //return removed
          ListView.builder(
              itemCount: _notes.length,
              itemBuilder: (context, index){
                return Column(
                  children: <Widget>[
                    const SizedBox(height: 8.0,),
                    GestureDetector(
                      onHorizontalDragStart: (_){
                        setState(() {
                          _notes.removeAt(index);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0 , vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: ListTile(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShowDetail(index)));
                          },
                          onLongPress: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MeasurementForm(Mode.edit,index)));
                          },
                          title: Column(
                            children: <Widget>[
                              Text(
                                _notes[index]['Name'],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              )),
                              Text(
                                _notes[index]['Phone No.'],
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 15.0
                                ))
                            ],
                          ),
                          trailing: Icon(Icons.account_circle, color: Colors.black,),
                        ),
                      ),
                    ),
                  ],
                );
              })
                  : Center(
                    child: Text("Press (+) To Get Started", style: TextStyle(
                      fontSize: 20.0
                    ),),
                  ),
//          } return Center(child: CircularProgressIndicator(),);
//          },
//        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MeasurementForm(Mode.add, null)));
          },
          child: Icon(Icons.person_add, color: Colors.white,),
      ),
    );
  }
}
