import 'package:flutter/material.dart';

import 'package:proyecto/screens/home.dart';

//screens

void main(){
  runApp(
    MyApp
  );
}

final MaterialApp MyApp = MaterialApp(
  title: "Proyecto",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColorDark: Color(0xFF455A64),
    primaryColorLight: Color(0xFFCFD8DC),
//        primaryColor: Color(0xFF607D8B),
    primaryColor: Color(0xFF263238),
    backgroundColor: Color(0xFF263238),
    primaryTextTheme: TextTheme(
      title: TextStyle(color: Color(0xFFFFFFFF),),
      body1: TextStyle(color: Color(0xFF212121),),
      body2: TextStyle(color: Color(0xFF212121),),
      button: TextStyle(color: Color(0xFF212121),),
      caption: TextStyle(color: Color(0xFF212121),),
      display1: TextStyle(color: Color(0xFF212121),),
      display2: TextStyle(color: Color(0xFF212121),),
      display3: TextStyle(color: Color(0xFF212121),),
      display4: TextStyle(color: Color(0xFF212121),),
      headline: TextStyle(color: Color(0xFF212121),),
      overline: TextStyle(color: Color(0xFF212121),),
      subhead: TextStyle(color: Color(0xFF212121),),
      subtitle: TextStyle(color: Color(0xFF212121),),
    ),
//    textTheme: TextTheme(
//      title: TextStyle(color: Color(0xFFFFFFFF),),
//      body1: TextStyle(color: Color(0xFFFFFFFF),),
//      body2: TextStyle(color: Color(0xFFFFFFFF),),
//      button: TextStyle(color: Color(0xFFFFFFFF),),
//      caption: TextStyle(color: Color(0xFFFFFFFF),),
//      display1: TextStyle(color: Color(0xFFFFFFFF),),
//      display2: TextStyle(color: Color(0xFFFFFFFF),),
//      display3: TextStyle(color: Color(0xFFFFFFFF),),
//      display4: TextStyle(color: Color(0xFFFFFFFF),),
//      headline: TextStyle(color: Color(0xFFFFFFFF),),
//      overline: TextStyle(color: Color(0xFFFFFFFF),),
//      subhead: TextStyle(color: Color(0xFFFFFFFF),),
//      subtitle: TextStyle(color: Color(0xFFFFFFFF),),
//    ),
    iconTheme: IconThemeData(color: Color(0xFFFFFFFF),opacity: 100.0, size:35.0),
//TODO
//    accentColor: Color(0xFFFFC107),
  accentColor: Colors.orangeAccent,
    dividerColor: Color(0xFF757575),
  ),

  home: Home(),
);