// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gnxapp/navDrawerElement/faculty.dart';
import 'package:gnxapp/navDrawerElement/profile.dart';
import 'navDrawerElement/events.dart';
import 'navDrawerElement/blogs.dart';
import 'navDrawerElement/faculty.dart';
import 'navDrawerElement/aboutUs.dart';

class NavDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DrawerState();
}

class DrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: DrawerHeader(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 150.0, bottom: 50.0),
                      child: Icon(Icons.account_circle, size: 100.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, top: 20.0),
                    child: Text(
                      "WELCOME XYZ",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(color: Color(0xFFD72323)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("PROFILE"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          /*ListTile(
            leading: Icon(Icons.event),
            title: Text("EVENTS"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Events()));
            },
          ),*/
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("BLOGS"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blog()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("FACULTY"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Faculty()));
            },
          ),
          ListTile(
            leading: Icon(Icons.developer_board),
            title: Text("ABOUT US"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
          )
        ],
      ),
    );
  }
}
