import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/InheritedWidget/NoteInherit.dart';

class ShowDetail extends StatefulWidget {

  final index;
  ShowDetail(this.index);

  @override
  _ShowDetailState createState() => _ShowDetailState();
}

class _ShowDetailState extends State<ShowDetail> {

  List<Map<String, String>> get _notes => DetailInheritedWidget.of(context).notes;
  List template = ['Length', 'Hip', 'Height', 'Front', 'Back', 'Up'];//Created a list instead of hardcoding the strings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: kToolbarHeight,),
          Text(
              _notes[widget.index]['Name'],
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
              _notes[widget.index]['Phone No.'],
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 15.0
              )
          ),
          SingleChildScrollView(
            child: DataTable(
                columns: [
                  DataColumn(label: Text("Kurtha")),
                  DataColumn(label: Text(" ")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text(template[0])),
                    DataCell(Text(_notes[widget.index]['Length']))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(template[1])),
                    DataCell(Text(_notes[widget.index]['Hip']))
                  ]),
                ]
            ),
          )
        ],
      ),
    );
  }
}
//
//class _info extends StatefulWidget {
//
//  final value;
//  _info(this.value);
//
//  @override
//  __infoState createState() => __infoState();
//}
//
//class __infoState extends State<_info> {
//  @override
//  Widget build(BuildContext context) {
//    return Text(
//      widget.value,
//      style: TextStyle(
//          fontWeight: FontWeight.bold,
//          fontSize: 22.0
//      ),);
//  }
//}
