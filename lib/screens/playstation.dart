import 'package:flutter/material.dart';

class Playstation extends StatefulWidget {
  @override
  _PlaystationState createState() => _PlaystationState();
}

class _PlaystationState extends State<Playstation> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Playstation",style: TextStyle(color: Colors.white),),
    );
  }
}
