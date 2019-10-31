import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/InheritedWidget/NoteInherit.dart';
import 'ui/pages/Welcome/welcome.dart';
//import 'ui/pages/home.dart';
//import 'ui/pages/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DetailInheritedWidget(
      MaterialApp(
        title: 'Tailor\'s App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.indigo,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.amberAccent,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15.0, horizontal: 20.0,
            )
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0)
            )
          )
        ),
        home: Welcome(),
      ),
    );
  }
}