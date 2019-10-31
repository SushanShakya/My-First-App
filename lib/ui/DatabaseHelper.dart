//import 'package:sqflite/sqflite.dart';
//import 'package:path/path.dart';
//
//class Connector{
//  static Database db;
//
//  static Future open() async{
//    db = await openDatabase(join(await getDatabasesPath(), 'details.db'),
//    version: 1,
//    onCreate: (Database db, int version) async{
//      db.execute('''
//        create table details(
//          id integer primary key autoincrement,
//          Name text not null,
//          Phone No. integer,
//          Length integer,
//          Hip integer,
//          Height integer,
//          Front integer,
//          Back integer,
//          Up integer,
//        );
//      ''');
//    }
//    );
//  }
//
// static Future <List<Map<String, dynamic>>> getDetails() async{
//    if(db == null){
//      await open();
//    }
//    return await db.query('details');
//  }
//
//}
//
