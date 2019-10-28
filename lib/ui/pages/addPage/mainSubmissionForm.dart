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
  FocusNode shit2 = new FocusNode();
  FocusNode shit3 = new FocusNode();
  FocusNode shit4 = new FocusNode();
  FocusNode shit5 = new FocusNode();
  FocusNode shit6 = new FocusNode();
  FocusNode shit7 = new FocusNode();
  FocusNode shit8 = new FocusNode();

  @override
  void initState() {
    super.initState();
    _message = TextEditingController(text: widget.title != null? widget.title: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              //Yes it might be a bad design but this is the only thing that came to my mind so yeah !
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
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[1]
                ),
                onChanged: (String str){
                  customerDetail.add(str);
                },
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit3);
                  },
                textInputAction: TextInputAction.next,
                  focusNode: shit2
              ),
              const SizedBox(height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[2]
                ),
                onChanged: (String str){
                  customerDetail.add(str);
                },
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit4);
                  },
                  focusNode: shit3,
                  textInputAction: TextInputAction.next
              ),
              const SizedBox(height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[3]
                ),
                onChanged: (String str){
                  customerDetail.add(str);
                },
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit5);
                  },
                  focusNode: shit4,
                  textInputAction: TextInputAction.next
              ),
              const SizedBox(height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[4]
                ),
                onChanged: (String str){
                  customerDetail.add(str);
                },
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit6);
                  },
                  focusNode: shit5,
                  textInputAction: TextInputAction.next
              ),
              const SizedBox(height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[5]
                ),
                onChanged: (String str){
                  customerDetail.add(str);
                },
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit7);
                  },
                  focusNode: shit6,
                  textInputAction: TextInputAction.next
              ),
              const SizedBox(height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[6]
                ),
                onChanged: (String str){
                  customerDetail.add(str);
                },
                  focusNode: shit7,
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit8);
                  },
                  textInputAction: TextInputAction.next
              ),
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
