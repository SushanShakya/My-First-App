import 'package:flutter/material.dart';
import '../DatabaseHelper.dart';
import 'Details.dart';
import 'addPage/mainSubmissionForm.dart';


class NoteList extends StatefulWidget {

  @override
  NoteListState createState() {
    return new NoteListState();
  }
}

class NoteListState extends State<NoteList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tailor\'s Notes',
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        ),
        ),
      ),
      body: FutureBuilder(
        future: NoteProvider.getNoteList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final notes = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) {
//                final deliveryDate = notes[index]['delivery_Date'];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShowDetail(notes[index]))
                    );
                  },
                  onLongPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Note(NoteMode.Editing, notes[index]))
                    );
                  },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.all_inclusive, color: Colors.black,),
                          trailing: Icon(Icons.account_circle, color: Colors.black,),
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,20,0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                _NoteTitle(notes[index]['title']),
                                Container(height: 4,),
                                _NoteText(notes[index]['text']),
//                                const SizedBox(height: 4,),
//                                _NoteText("Delivery : $deliveryDate")
                              ],
                            ),
                          ),

                      ),
                    ),
                );
              },
              itemCount: notes.length,
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Note(NoteMode.Adding, null))
          );
        },
        child: Icon(Icons.person_add,color: Colors.white,),
      ),
    );
  }
}

class _NoteTitle extends StatelessWidget {
  final String _title;

  _NoteTitle(this._title);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class _NoteText extends StatelessWidget {
  final String _text;

  _NoteText(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          color: Colors.indigo
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
