import 'package:flutter/material.dart';
import 'Timetable.dart';
import 'globals.dart' as globals;


void main() {
  runApp(TimeTableApp());
}

class TimeTableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'super-TimeTable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TimeTablePage(),
    );
  }
}
