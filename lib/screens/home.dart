import 'package:flutter/material.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:proyecto/screens/playstation.dart';
import 'package:proyecto/screens/xbox.dart';
import 'package:proyecto/screens/switch.dart';
//Vender Screens
import 'package:proyecto/screens/vender/playstation_vender.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage =0;
  final _pageOptions = [
    Playstation(),
    Xbox(),
    NSwitch(),
  ];

  String titleAB = "Playstation";
  void setTitleAppbar(int index){
    switch(index){
      case 0:
        titleAB = "Playstation";
        break;
      case 1:
        titleAB = "Xbox";
        break;
      case 2:
        titleAB = "Switch";
        break;
    }
  }
  
  Color checkColor(int index){
      switch(index){
        case 0:
          return Colors.blueAccent;
        case 1:
          return Colors.green;
        case 2:
          return Colors.redAccent;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: Theme( // esto es para ponerle un color al fondo del Drawer
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).backgroundColor,
          ),
          child: Drawer(

          ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(titleAB),
      ),

    body: _pageOptions[_selectedPage],

    floatingActionButton: SpeedDial(
      elevation: 0.0,
      backgroundColor: checkColor(_selectedPage),
      overlayOpacity: 0.8,
      overlayColor: Theme.of(context).backgroundColor,
      child: Icon(Icons.add,color: Theme.of(context).iconTheme.color),
      children: [
        SpeedDialChild(
          elevation: 0.0,
          label: "Vender",
          backgroundColor: Theme.of(context).backgroundColor,
          child: Icon(Icons.attach_money,color:Theme.of(context).iconTheme.color),
        ),
        SpeedDialChild(
            elevation: 0.0,
            label: 'Cambiar',
            backgroundColor: Theme.of(context).backgroundColor,
            child: Icon(Icons.repeat, color: Theme.of(context).iconTheme.color,)
        ),
      ],
    ),

//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            checkColor(index);
            setTitleAppbar(index);
            _selectedPage = index;
          });
        },
        backgroundColor: checkColor(_selectedPage),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/ps.png', height: 30.0, color: Colors.white24),
            title: Container(height: 0.0,),
            activeIcon: Image.asset('assets/ps.png', height: 30.0, color: Colors.white ,),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/xbox.png', height: 30.0, color: Colors.white24),
            title: Container(height: 0.0,),
            activeIcon: Image.asset('assets/xbox.png', height: 30.0, color: Colors.white ,),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/switch.png', height: 30.0, color: Colors.white24),
            title: Container(height: 0.0,),
            activeIcon: Image.asset('assets/switch.png', height: 30.0, color: Colors.white ,),
          ),
        ],
      ),

    );
  }
}
