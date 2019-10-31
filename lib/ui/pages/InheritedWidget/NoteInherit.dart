import 'package:flutter/material.dart';

class DetailInheritedWidget extends InheritedWidget{

  final notes = [
    {
      'Name':'Sushan',
      'Phone No.':'9823535417',
      'Length':'This is shit',
      'Hip':'Hell',
      'Height':'',
      'Front':'',
      'Back':'',
      'Up':''
    }
  ];

  DetailInheritedWidget(Widget child) : super(child: child);

  static DetailInheritedWidget of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(DetailInheritedWidget)as DetailInheritedWidget);
  }

  @override
  bool updateShouldNotify(DetailInheritedWidget oldWidget) {
    return oldWidget.notes != notes;
  }


}