import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              const SizedBox(height: kToolbarHeight),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                width: 100.0,
                height: 100.0,
              ),
              const SizedBox(height: 25.0,),
              Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30.0,),
              RaisedButton(
                color: Colors.amberAccent,
                child: Text(
                  "Continue",
                  style: new TextStyle(
                    fontSize: 20.0
                ),),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }

}