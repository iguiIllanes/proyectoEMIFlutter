import 'package:flutter/material.dart';

class NSwitch extends StatefulWidget {
  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<NSwitch> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Switch",style: TextStyle(color: Colors.white),),
    );
  }
}
