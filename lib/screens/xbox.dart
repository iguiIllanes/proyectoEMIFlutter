import 'package:flutter/material.dart';

class Xbox extends StatefulWidget {
  @override
  _XboxState createState() => _XboxState();
}

class _XboxState extends State<Xbox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Xbox",style: TextStyle(color: Colors.white),),
    );
  }
}
