import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: kToolbarHeight,),
          Container(
            decoration: BoxDecoration(
            ),
              height: 100.0,
              width: double.infinity,
                  child: Hero(tag: 'measure',child: Image(image: AssetImage('asset/images/icon.png')))

          ),

          Container(
            child: Text("Something"),
          )
        ],
      ),
    );
  }
}
