import 'package:TimeTable/drawer.dart';
import 'package:flutter/material.dart';

import 'globals.dart' as globals;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';


class ResponsiveDrawerScaffold extends StatefulWidget {
  final Widget body;
  final String title;
  final Widget appBarLeading;
  final List<Widget> appBarActions;
  final Widget appBarBottom;
  final Widget reallyWantToProvideAppBar;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final FloatingActionButton floatingActionButton;

  ResponsiveDrawerScaffold(
      {this.body,
        this.title = '#FFF Info',
        this.appBarLeading,
        this.appBarActions,
        this.appBarBottom,
        this.floatingActionButton,
        this.reallyWantToProvideAppBar,
        this.floatingActionButtonLocation});

  @override
  _ResponsiveDrawerScaffoldState createState() =>
      _ResponsiveDrawerScaffoldState();
}

class _ResponsiveDrawerScaffoldState extends State<ResponsiveDrawerScaffold> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1024) {
      return Scaffold(
        appBar: (widget.reallyWantToProvideAppBar == null)
            ? AppBar(
          title: Text(widget.title),
          actions: widget.appBarActions,
          bottom: widget.appBarBottom,
          leading: widget.appBarLeading,
        )
            : widget.reallyWantToProvideAppBar,
        drawer: TimetableDrawer(),
        body: widget.body,
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonLocation: widget.floatingActionButtonLocation,
      );
    } else {
      return Row(children: [
        Container(width: 256, child: TimetableDrawer()),
        Expanded(
          child: Scaffold(
            appBar: (widget.reallyWantToProvideAppBar == null)
                ? AppBar(
              title: Text(widget.title),
              actions: widget.appBarActions,
              bottom: widget.appBarBottom,
              automaticallyImplyLeading: false,
              leading: widget.appBarLeading,
            )
                : widget.reallyWantToProvideAppBar,
            body: widget.body,
            floatingActionButton: widget.floatingActionButton,
            floatingActionButtonLocation: widget.floatingActionButtonLocation,
            )
          ),
      ]);
    }
  }
}
