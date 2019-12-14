import 'package:flutter/material.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage =0;
  final _pageOptions = [
    Text("1"),
    Text("2"),
    Text("3"),
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

      floatingActionButton: FloatingActionButton (
        onPressed: (){},
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(15.0)),),
        child: Icon(Icons.add, color: Theme.of(context).iconTheme.color,),

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

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
