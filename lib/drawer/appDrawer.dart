import 'package:flutter/material.dart';
import 'package:gnxapp/routes/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //Drawer Header
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/drawer_bg.png'),
              ),
            ),
            accountName: Text(
              "User Name",
              style: TextStyle(fontSize: 22.0),
            ),
            accountEmail: Text(
              "user@gmail.com",
              style: TextStyle(fontSize: 16.0),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.cyan,
              child: Text(
                "U",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),

          //Menu Items
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.notifications,
                  size: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Subscribe',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30.0,
            ),
            onTap: ()=>Navigator.pushReplacementNamed(context, Routes.subscribeRoute),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.black),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.event,
                  size: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Events',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30.0,
            ),
            onTap: ()=>{/*Navigator.pushReplacementNamed(context, Routes.eventRoute)*/},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.black),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.description,
                  size: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Blogs',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30.0,
            ),
            onTap: ()=>{/*Navigator.pushReplacementNamed(context, Routes.blogRoute)*/},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.black),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.supervisor_account,
                  size: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Faculty',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30.0,
            ),
            onTap: ()=>{/*Navigator.pushReplacementNamed(context, Routes.facultyRoute)*/},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.black),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.sms,
                  size: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'About Us',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30.0,
            ),
            onTap: ()=>{/*Navigator.pushReplacementNamed(context, Routes.aboutRoute)*/},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
