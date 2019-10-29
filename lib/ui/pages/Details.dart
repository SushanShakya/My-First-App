import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/InheritedWidget/NoteInherit.dart';

class ShowDetail extends StatefulWidget {

  final index;
  ShowDetail(this.index);

  @override
  _ShowDetailState createState() => _ShowDetailState();
}

class _ShowDetailState extends State<ShowDetail> {

  //List<Map<String, String>> get _notes => DetailInheritedWidget.of(context).notes;
  List template = ['Name', 'Phone No.','Length', 'Hip', 'Height', 'Front', 'Back', 'Up'];//Created a list instead of hardcoding the strings

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: ListView.builder(
          itemCount: template.length,
          itemBuilder: (context,index){
            return Card(
                child: Text(template[index])
            );

          })
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
