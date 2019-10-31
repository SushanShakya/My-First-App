import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/home.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: kToolbarHeight,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                width: 100.0,
                height: 100.0,
                child: Image(),
              ),
              const SizedBox(height: 25.0,),
              Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 15.0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                          text: 'Warning !! ',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                          )
                      ),
                      new TextSpan(
                          text: ': This is the alpha version of the app. '
                              'So if things were to go wrong, the Dev. is sorry.',

                      ),
                    ],
                  ),
                )
              ),
              const SizedBox(height: 30.0,),
              FlatButton(
                color: Colors.teal,
                highlightColor: Colors.cyan,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                textColor: Colors.white,
                child: Text(
                  "Continue",
                  style: new TextStyle(
                    fontSize: 20.0
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}

