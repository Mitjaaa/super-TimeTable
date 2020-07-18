import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'responsiveDrawerScaffold.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'globals.dart' as globals;


class TimeTablePage extends StatefulWidget {
  TimeTablePage({Key key,}) : super(key: key);

  @override
  _TimeTablePageState createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {
  ShapeBorder navigationShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30), topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveDrawerScaffold(
      reallyWantToProvideAppBar: AppBar(
        title: Text(globals.title),
      ),
      body: Center(
        child: Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                Text("TimeTable!!")

              ]),
            ),

          bottomNavigationBar: SnakeNavigationBar(
            style: SnakeBarStyle.pinned,
            snakeShape: SnakeShape.circle,
            snakeColor: Colors.black,
            backgroundColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,

            shape: navigationShape,
            padding: EdgeInsets.all(15),

            currentIndex: globals.selectedNavItemPosition,

            onPositionChanged: (index) =>
                setState(() => globals.selectedNavItemPosition = index),

            items: [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.calendarWeek),
                  title: Text('tickets')),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.clock, size: 23,),
                  title: Text('calendar')),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.redo, size: 23,),
                  title: Text('home'))
            ],
          )
        )
      )
    );
  }
}