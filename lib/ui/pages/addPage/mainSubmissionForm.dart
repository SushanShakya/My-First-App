import 'package:flutter/material.dart';
//import 'package:notes/inherited_widgets/note_inherited_widget.dart';
import '../../DatabaseHelper.dart';

enum NoteMode {
  Editing,
  Adding
}

class Note extends StatefulWidget {

  final NoteMode noteMode;
  final Map<String, dynamic> note;

  Note(this.noteMode, this.note);

  @override
  NoteState createState() {
    return new NoteState();
  }
}

class NoteState extends State<Note> {

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _length = new TextEditingController();
  final TextEditingController _hip = new TextEditingController();
  final TextEditingController _chest = new TextEditingController();
  final TextEditingController _waist = new TextEditingController();
  final TextEditingController _sholder = new TextEditingController();
  final TextEditingController _chirne = new TextEditingController();
  final TextEditingController _pher = new TextEditingController();
  final TextEditingController _blength = new TextEditingController();
  final TextEditingController _bbreadth = new TextEditingController();
  final TextEditingController _fneck = new TextEditingController();
  final TextEditingController _bneck = new TextEditingController();
  final TextEditingController _slength = new TextEditingController();
  final TextEditingController _sbreadth = new TextEditingController();
  final TextEditingController _sknee = new TextEditingController();
  final TextEditingController _neckDesign = new TextEditingController();

  List template = [
    'Name','Phone_No','Length',
    'Chest', 'Waist', 'Hip',
    'Sholder', 'Chirne','Pher',
    'B_length','B_breadth','F_neck',
    'B_neck','S_length','S_breadth',
    'S_knee','neck_Design'
  ];

//  List<Map<String, String>> get _notes => NoteInheritedWidget.of(context).notes;

  final FocusNode shit2 = new FocusNode();
  final FocusNode shit3 = new FocusNode();
  final FocusNode shit4 = new FocusNode();
  final FocusNode shit5 = new FocusNode();
  final FocusNode shit6 = new FocusNode();
  final FocusNode shit7 = new FocusNode();
  final FocusNode shit8 = new FocusNode();
  final FocusNode shit9 = new FocusNode();
  final FocusNode shit10 = new FocusNode();
  final FocusNode shit11 = new FocusNode();
  final FocusNode shit12 = new FocusNode();
  final FocusNode shit13 = new FocusNode();
  final FocusNode shit14 = new FocusNode();
  final FocusNode shit15 = new FocusNode();
  final FocusNode shit16 = new FocusNode();
  final FocusNode shit17 = new FocusNode();
  @override
  void didChangeDependencies() {
    if (widget.noteMode == NoteMode.Editing) {
      _titleController.text = widget.note['title'];
      _textController.text = widget.note['text'];
      _length.text = widget.note['length'];
      _chest.text     = widget.note['chest'];
      _waist.text     = widget.note['waist'];
      _hip.text       = widget.note['hip'];
      _sholder.text   = widget.note['sholder'];
      _chirne.text    = widget.note['chirne'];
      _pher.text      = widget.note['pher'];
      _blength.text   = widget.note['B_length'];
      _bbreadth.text  = widget.note['B_breadth'];
      _fneck.text     = widget.note['F_neck'];
      _bneck.text     = widget.note['B_neck'];
      _slength.text   = widget.note['S_length'];
      _sbreadth.text  = widget.note['S_breadth'];
      _sknee.text     = widget.note['S_knee'];
      _neckDesign.text= widget.note['neck_Design'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.noteMode == NoteMode.Adding ? 'Add note' : 'Edit note'
        ),
        actions: <Widget>[
          _NoteButton('Save', Colors.indigo, () {
            final title = _titleController.text;
            final text = _textController.text;
            final length = _length.text;
            final chest = _chest.text;
            final waist = _waist.text;
            final hip = _hip.text;
            final sholder =  _sholder.text;
            final chirne =  _chirne.text;
            final pher =  _pher.text;
            final blength =  _blength.text;
            final bbreadth =  _bbreadth.text;
            final bneck =  _bneck.text;
            final fneck =  _fneck.text;
            final slength =  _slength.text;
            final sbreadth =  _sbreadth.text;
            final sknee =  _sknee.text;
            final neckDesign =  _neckDesign.text;

            //Exception handling when user does not input anything
            //This specific part of the handling is required while viewing the details
            if(title == null){ _titleController.text = " ";}
            if(text == null){ _textController.text = " ";}
            if(length == null){ _length.text = " ";}
            if(chest == null){ _chest.text = " ";}
            if(waist == null){ _waist.text = " ";}
            if(hip == null){ _hip.text = " ";}
            if(sholder == null){ _sholder.text = " ";}
            if(chirne == null){ _chirne.text = " ";}
            if(pher == null){ _pher.text = " ";}
            if(blength == null){ _blength.text = " ";}
            if(bbreadth == null){ _bbreadth.text = " ";}
            if(fneck == null){ _fneck.text = " ";}
            if(bneck == null){ _bneck.text = " ";}
            if(slength == null){ _slength.text = " ";}
            if(sbreadth == null){ _sbreadth.text = " ";}
            if(sknee == null){ _sknee.text = " ";}
            if(neckDesign == null){ _neckDesign.text = " ";}

            if (widget?.noteMode == NoteMode.Adding) {
              NoteProvider.insertNote({
                'title': title,
                'text': text,
                'length': length,
                'chest' : chest,
                'waist' : waist,
                'hip' : hip,
                'sholder' : sholder,
                'chirne' : chirne,
                'pher' : pher,
                'B_length' : blength,
                'B_breadth' : bbreadth,
                'B_neck' : bneck,
                'F_neck' : fneck,
                'S_length' : slength,
                'S_breadth' : sbreadth,
                'S_knee' : sknee,
                'neck_Design' : neckDesign
              });
            } else if (widget?.noteMode == NoteMode.Editing) {
              NoteProvider.updateNote({
                'id': widget.note['id'],
                'title': _titleController.text,
                'text': _textController.text,
                'length': _length.text,
                'chest' : _chest.text,
                'waist' : _waist.text,
                'hip' : _hip.text,
                'sholder' : _sholder.text,
                'chirne' : _chirne.text,
                'pher' : _pher.text,
                'B_length' : _blength.text,
                'B_breadth' : _bbreadth.text,
                'B_neck' : _bneck.text,
                'F_neck' : _fneck.text,
                'S_length' : _slength.text,
                'S_breadth' : _sbreadth.text,
                'S_knee' : _sknee.text,
                'neck_Design' : _neckDesign.text
              });
            }
            Navigator.pop(context);
          }),
        ],
      ),
      body:  Container(
        margin: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: template[0]
                  ),
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(shit2);
                  },
                  textInputAction: TextInputAction.next,
                ),
                Container(height: 8,),
                _Input(_textController, template[1], shit2, shit3),
                const SizedBox(height: 10.0,),
                Text("Kurtha", style: TextStyle(fontSize: 18.0),textAlign: TextAlign.left,), //UI part
                const SizedBox(height: 5.0,),
                _Input(_length, template[2], shit3, shit4),
                const SizedBox(height: 10.0,),
                _Input(_hip, template[3], shit4, shit5),
                const SizedBox(height: 10.0,),
                _Input(_chest, template[4], shit5, shit6),
                const SizedBox(height: 10.0,),
                _Input(_waist, template[5], shit6, shit7),
                const SizedBox(height: 10.0,),
                _Input(_sholder, template[6], shit7, shit8),
                const SizedBox(height: 10.0,),
                _Input(_chirne, template[7], shit8, shit9),
                const SizedBox(height: 10.0,),
                _Input(_pher, template[8], shit9, shit10),
                const SizedBox(height: 10.0,),
                _Input(_blength, template[9], shit10, shit11),
                const SizedBox(height: 10.0,),
                _Input(_bbreadth, template[10], shit11, shit12),
                const SizedBox(height: 10.0,),
                _Input(_fneck, template[11], shit12, shit13),
                const SizedBox(height: 10.0,),
                _Input(_bneck, template[12], shit13, shit14),
                const SizedBox(height: 10.0,),
                Text("Surwal", style: TextStyle(fontSize: 18.0),textAlign: TextAlign.left,), //UI part
                const SizedBox(height: 5.0,),
                _Input(_slength, template[13], shit14, shit15),
                const SizedBox(height: 10.0,),
                _Input(_sbreadth, template[14], shit15, shit16),
                const SizedBox(height: 10.0,),
                _Input(_sknee, template[15], shit16, shit17),
                const SizedBox(height: 10.0,),
                TextField(
                  controller: _neckDesign,
                  decoration: InputDecoration(
                    labelText: template[16]
                  ),
                  textInputAction: TextInputAction.done,
                  focusNode: shit17,
                ),
                Container(height: 16.0,),
//            _Input(_length, template[2], shit7, shit8),
//            const SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _NoteButton('Save', Colors.blue, () {
                      final title = _titleController.text;
                      final text = _textController.text;

                      if (widget?.noteMode == NoteMode.Adding) {
                        NoteProvider.insertNote({
                          'title': title,
                          'text': text
                        });
                      } else if (widget?.noteMode == NoteMode.Editing) {
                        NoteProvider.updateNote({
                          'id': widget.note['id'],
                          'title': _titleController.text,
                          'text': _textController.text,
                        });
                      }
                      Navigator.pop(context);
                    }),
                    Container(height: 16.0,),
                    _NoteButton('Discard', Colors.grey, () {
                      Navigator.pop(context);
                    }),
                    widget.noteMode == NoteMode.Editing ?
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: _NoteButton('Delete', Colors.red, () async {
                          await NoteProvider.deleteNote(widget.note['id']);
                          Navigator.pop(context);
                        }),
                      )
                     : Container()
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}

class _NoteButton extends StatelessWidget {

  final String _text;
  final Color _color;
  final Function _onPressed;

  _NoteButton(this._text, this._color, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: _onPressed,
      child: Text(
        _text,
        style: TextStyle(color: Colors.white),
      ),
//      height: 40,
//      minWidth: 100,
      color: _color,
    );
  }
}

class _Input extends StatelessWidget {

  final TextEditingController _controller;
  final String _template;
  final FocusNode _nextNode, _ownNode;

  _Input(this._controller, this._template, this._ownNode, this._nextNode);

  @override
  Widget build(BuildContext context) {
    return TextField(
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