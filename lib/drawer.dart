import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:TimeTable/Timetable.dart';

class TimetableDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: ListView(
                children: [
                  Text(
                    "super",
                    style: Theme.of(context).textTheme.overline,
                  ),
                  Text(
                    "TimeTable",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              accountEmail: Text('Manage your time!'),
              /*currentAccountPicture: Image.asset(
                "assets/launcher.png",
                semanticLabel: 'Fridays for future logo',
              ),*/
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            ListTile(
              title: Text('...'),
              leading: Icon(FontAwesomeIcons.ellipsisH),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TimeTablePage()),
                );
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(FontAwesomeIcons.cog),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TimeTablePage()),
                );
              },
            ),ListTile(
              title: Text('About'),
              leading: Icon(FontAwesomeIcons.user),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TimeTablePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
