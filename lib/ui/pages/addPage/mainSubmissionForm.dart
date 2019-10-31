import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/InheritedWidget/NoteInherit.dart';

//  To define if the page is for adding or editing
enum Mode{
  edit,
  add
}

class MeasurementForm extends StatefulWidget{

  final Mode mode;
  final int index;
  MeasurementForm(this.mode,this.index);


  @override
  _MeasurementFormState createState() => _MeasurementFormState();
}

class _MeasurementFormState extends State<MeasurementForm> {

  List<Map<String, String>> get _notes => DetailInheritedWidget.of(context).notes;
  List template = ['Name', 'Phone No.','Length', 'Hip', 'Height', 'Front', 'Back', 'Up'];//Created a list instead of hardcoding the strings
  TextEditingController _name = new TextEditingController();
  TextEditingController _phoneNo = new TextEditingController();
  TextEditingController _length = new TextEditingController();
  TextEditingController _hip = new TextEditingController();
  TextEditingController _height = new TextEditingController();
  TextEditingController _front = new TextEditingController();
  TextEditingController _back = new TextEditingController();
  TextEditingController _up = new TextEditingController();
  final FocusNode shit2 = new FocusNode();
  final FocusNode shit3 = new FocusNode();
  final FocusNode shit4 = new FocusNode();
  final FocusNode shit5 = new FocusNode();
  final FocusNode shit6 = new FocusNode();
  final FocusNode shit7 = new FocusNode();
  final FocusNode shit8 = new FocusNode();

//    For the purpose of displaying the text when edited
  @override
  void didChangeDependencies() {
    if(widget.mode == Mode.edit) {
      _name.text = _notes[widget.index]['Name'];
      _phoneNo.text = _notes[widget.index]['Phone No.'];
      _length.text = _notes[widget.index]['Length'];
      _hip.text = _notes[widget.index]['Hip'];
      _height.text = _notes[widget.index]['Height'];
      _front.text = _notes[widget.index]['Front'];
      _back.text = _notes[widget.index]['Back'];
      _up.text = _notes[widget.index]['Up'];
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
            widget.mode == Mode.add ?"Add New" : "Edit"
        ),
        actions: <Widget>[
          FlatButton(
              textColor: Colors.black ,
              onPressed: (){
                /*When the "Save" button is pressed the
                 details are added to the map*/
                if(widget.mode == Mode.add){
                  _notes.add({
                    'Name'      :_name.text,
                    'Phone No.' :_phoneNo.text,
                    'Length'    :_length.text,
                    'Hip'       :_hip.text,
                    'Height'    :_height.text,
                    'Front'     :_front.text,
                    'Back'      :_back.text,
                    'Up'        :_up.text
                });//Notes.add
                }else if(widget.mode == Mode.edit){
                  _notes[widget.index] = {
                    'Name':_name.text,
                    'Phone No.':_phoneNo.text ,
                    'Length':_length.text,
                    'Hip':_hip.text,
                    'Height':_height.text,
                    'Front':_front.text,
                    'Back':_back.text,
                    'Up':_up.text
                  };
                }
                Navigator.pop(context, _name.text.toString());
              },
              child: Text("Save"),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          )
        ],
      ),

      //Just an Example of bad architecture but whatever
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
                controller: _name,
                decoration: InputDecoration(
                      labelText: template[0]
                  ),
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit2);
                  },
                  textInputAction: TextInputAction.next,

                ),
              const SizedBox(height: 10.0,),
              _Input(_phoneNo, template[1], shit2, shit3),
              const SizedBox(height: 10.0,),
              Text("Kurtha", style: TextStyle(fontSize: 18.0),textAlign: TextAlign.left,), //UI part
              const SizedBox(height: 5.0,),
              _Input(_length, template[2], shit3, shit4),
              const SizedBox(height: 10.0,),
              _Input(_hip, template[3], shit4, shit5),
              const SizedBox(height: 10.0,),
              _Input(_height, template[4], shit5, shit6),
              const SizedBox(height: 10.0,),
              _Input(_front, template[5], shit6, shit7),
              const SizedBox(height: 10.0,),
              _Input(_back, template[6], shit7, shit8),
              const SizedBox(height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: template[7]
                ),
                  focusNode: shit8,
                  textInputAction: TextInputAction.done,
                controller: _up,
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

