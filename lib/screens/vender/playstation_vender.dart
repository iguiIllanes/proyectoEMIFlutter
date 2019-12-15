import 'package:flutter/material.dart';

class PlaystationVender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'playstation_vender',
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.redAccent,
      ),
    );
  }
}
