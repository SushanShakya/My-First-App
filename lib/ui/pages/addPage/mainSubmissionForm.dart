import 'package:flutter/material.dart';

class MeasurementForm extends StatefulWidget{
  final String title;
  MeasurementForm({this.title});
  @override
  _MeasurementFormState createState() => _MeasurementFormState();
}

class _MeasurementFormState extends State<MeasurementForm> {

  List customerDetail = [];
  List template = ['Name', 'Phone No.','smth', 'smth','smth','smth','smth','smth'];//Created a list instead of hardcoding the strings
  TextEditingController _message = new TextEditingController();
  final FocusNode shit2 = new FocusNode();
  final FocusNode shit3 = new FocusNode();
  final FocusNode shit4 = new FocusNode();
  final FocusNode shit5 = new FocusNode();
  final FocusNode shit6 = new FocusNode();
  final FocusNode shit7 = new FocusNode();
  final FocusNode shit8 = new FocusNode();

  @override
  void initState() {
    super.initState();
    _message = TextEditingController(text: widget.title != null? widget.title: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Add New"),
        actions: <Widget>[
          FlatButton(
              textColor: Colors.black ,
              onPressed: (){
                Navigator.pop(context, _message.text.toString());
              },
              child: Text("Save"),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          )
        ],
      ),
      body: new Container(
        margin: const EdgeInsets.symmetric(horizontal:18.0 ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              /* Remember that this design is due to the
              difference in the first and last text form field
               */
              const SizedBox(height: 10.0,),
              TextFormField(
                controller: _message,
                decoration: InputDecoration(
                      labelText: template[0]
                  ),
                  onChanged: (String str){
                    customerDetail.add(str);
                  },
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit2);
                  },
                  textInputAction: TextInputAction.next,

                ),
              const SizedBox(height: 10.0,),
              _Input(null, template[1], shit2, shit3),
              const SizedBox(height: 10.0,),
              Text("Kurtha", style: TextStyle(fontSize: 18.0),textAlign: TextAlign.left,), //UI part
              const SizedBox(height: 5.0,),
              _Input(null, template[2], shit3, shit4),
              const SizedBox(height: 10.0,),
              _Input(null, template[3], shit4, shit5),
              const SizedBox(height: 10.0,),
              _Input(null, template[4], shit5, shit6),
              const SizedBox(height: 10.0,),
              _Input(null, template[5], shit6, shit7),
              const SizedBox(height: 10.0,),
              _Input(null, template[6], shit7, shit8),
              const SizedBox(height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[7]
                ),
                onChanged: (String str){
                  customerDetail.add(str);
                },
                  focusNode: shit8,
                  textInputAction: TextInputAction.done
              ),
              const SizedBox(height: 10.0,)
            ],
          ),
        ),
      ),
    );
  }
}

//The input form that was shown in add page or edit page
class _Input extends StatelessWidget {

  final TextEditingController _controller;
  final String _template;
  final FocusNode _nextNode, _ownNode;

  _Input(this._controller, this._template, this._ownNode, this._nextNode);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: _controller,
        decoration: InputDecoration(
            labelText: _template
        ),
        onEditingComplete: (){
          FocusScope.of(context).requestFocus(_nextNode);
        },
        textInputAction: TextInputAction.next,
        focusNode: _ownNode,
    );
  }
}

