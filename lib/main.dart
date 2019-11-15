import 'package:flutter/material.dart';

import 'ui/pages/Welcome/welcome.dart';



void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Notes',
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
                    borderRadius: BorderRadius.circular(40.0)
                )
            )
        ),
        home: Welcome(),
      );
  }
}
