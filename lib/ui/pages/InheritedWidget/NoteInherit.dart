//import 'package:flutter/widgets.dart';
//
//class DetailsInheritedWidget extends InheritedWidget{
//
//  final notes = [
//    {
//      'Name':'',
//      'Phone No.': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': ''
//    },
//    {
//      'Name':'',
//      'Phone No.': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': ''
//    },
//    {
//      'Name':'',
//      'Phone No.': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': '',
//      'smth': ''
//    }
//  ];
//  DetailsInheritedWidget(Widget child) : super(child: child);
//
//  static DetailsInheritedWidget of(BuildContext context){
//    return (context.inheritFromWidgetOfExactType(DetailsInheritedWidget)as DetailsInheritedWidget);
//  }
//  @override
//  bool updateShouldNotify(InheritedWidget oldWidget) {
//    return oldWidget.notes != notes;
//  }
//
//}