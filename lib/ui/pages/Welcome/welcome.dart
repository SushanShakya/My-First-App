import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/home.dart';

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
              const SizedBox(height: kToolbarHeight,),
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
                          text: 'Warning !! : ',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold
                          )
                      ),
                      new TextSpan(
                          text: 'This is the alpha version of the app. '
                              'So if things were to go wrong, the Dev. is sorry.',

                      ),
                    ],
                  ),
                )
              ),
              const SizedBox(height: 30.0,),
              OutlineButton(
                highlightColor: Colors.tealAccent,
                borderSide: BorderSide(color: Colors.lightGreenAccent),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                textColor: Colors.lightGreenAccent,
                child: Text(
                  "Continue",
                  style: new TextStyle(
                    fontSize: 20.0
                  ),
                ),
                onPressed: (){
//                  continueToHomePage(context);
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

//Future continueToHomePage(context) async {
//  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
//}