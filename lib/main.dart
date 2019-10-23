import 'package:flutter/material.dart';

import 'ui/pages/Welcome/welcome.dart';
//import 'ui/pages/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tailor\'s App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
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
      ),
      home: Welcome(),
    );
  }
}