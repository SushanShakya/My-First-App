import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NoteProvider {
  static Database db;

  static Future open() async {
    db = await openDatabase(
      join(await getDatabasesPath(), 'DATA.db'),
      version: 1,
      onCreate: (Database db, int version) async {
        db.execute('''
          create table Notes(
            id integer primary key autoincrement,
            title text not null,
            text text not null,
            length text,
            chest text,
            waist text,
            hip text,
            sholder text,
            chirne text,
            pher text,
            B_length text,
            B_breadth text,
            B_neck text,
            F_neck text,
            S_length text,
            S_breadth text,
            S_knee text,
            neck_Design text
          );
        ''');
      }
    );
  }

  static Future<List<Map<String, dynamic>>> getNoteList() async {
    if (db == null) {
      await open();
    }
    return await db.query('Notes');
  }

  static Future insertNote(Map<String, dynamic> note) async {
    await db.insert('Notes', note);
  }

  static Future updateNote(Map<String, dynamic> note) async {
    await db.update(
      'Notes',
      note,
      where: 'id = ?',
      whereArgs: [note['id']]);
  }

  static Future deleteNote(int id) async {
    await db.delete(
      'Notes',
      where: 'id = ?',
      whereArgs: [id]);
  } 
}