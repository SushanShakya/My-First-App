import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_app/ui/pages/InheritedWidget/NoteInherit.dart';

class ShowDetail extends StatefulWidget {

  final Map<String, dynamic> index;
  ShowDetail(this.index);

  @override
  _ShowDetailState createState() => _ShowDetailState();
}

class _ShowDetailState extends State<ShowDetail> {

  Color titleColor = Colors.deepPurple;
  Color subTitleColor = Colors.cyan;
  //List of what to display in the database
  List template = [
    'Length',
    'Chest', 'Waist', 'Hip',
    'Sholder', 'Chirne','Pher',
    'Baula_Length','Baula_Breadth','Front_Neck',
    'Baula_Neck','S_Length','S_Breadth',
    'S_Knee','NeckDesign'
  ];
  @override
  Widget build(BuildContext context) {
    var deliveryDate = widget.index['delivery_Date'];
    var now = widget.index['systemDate'];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: kToolbarHeight,),
            Text(
                widget.index['title'],
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
              textAlign: TextAlign.center,
            ),
            Text(
                widget.index['text'],
                style: TextStyle(
                    color: subTitleColor,
                    fontSize: 17.0
                ),
                textAlign: TextAlign.center,
            ),
            Text(
              widget.index['address'],
              style: TextStyle(
                  color: subTitleColor,
                  fontSize: 17.0
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.index['color'],
              style: TextStyle(
                  color: subTitleColor,
                  fontSize: 17.0
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,20,0),
              child: Text(
                'Created Date : $now',
                style: TextStyle(
                    fontSize: 13.0,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,20,0),
              child: Text(
                'Delivery Date : $deliveryDate',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 13.0,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DataTable(
                        columns: [
                          DataColumn(label: Text("Kurtha", style: TextStyle(fontSize: 20,color: titleColor),)),
                          DataColumn(label: Text("")),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(template[0])),
                            DataCell(Text(widget.index['length']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[1])),
                            DataCell(Text(widget.index['chest']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[2])),
                            DataCell(Text(widget.index['waist']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[3])),
                            DataCell(Text(widget.index['hip']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[4])),
                            DataCell(Text(widget.index['sholder']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[5])),
                            DataCell(Text(widget.index['chirne']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[6])),
                            DataCell(Text(widget.index['pher']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[7])),
                            DataCell(Text(widget.index['B_length']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[8])),
                            DataCell(Text(widget.index['B_breadth']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[9])),
                            DataCell(Text(widget.index['F_neck']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[10])),
                            DataCell(Text(widget.index['B_neck']))
                          ])
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DataTable(
                        columns: [
                          DataColumn(label: Text("Surwal", style: TextStyle(fontSize: 20,color: titleColor),)),
                          DataColumn(label: Text(" ")),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(template[11])),
                            DataCell(Text(widget.index['S_length']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[12])),
                            DataCell(Text(widget.index['S_breadth']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[13])),
                            DataCell(Text(widget.index['S_knee']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text("Surwal Design", style: TextStyle(fontSize: 19.0,color: titleColor),)),
                            DataCell(Text(widget.index['surwalDesign']))
                          ]),
                          DataRow(cells: [
                            DataCell(Text(template[14], style: TextStyle(fontSize: 19.0,color: titleColor),)),
                            DataCell(Text(widget.index['neck_Design']))
                          ]),

                        ]
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}