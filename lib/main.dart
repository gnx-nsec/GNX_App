import 'package:flutter/material.dart';
import 'package:gnxapp/subscribe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GNX App',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFFD72323),
        hintColor: Color(0xFF3E3636),
        scaffoldBackgroundColor: Color(0xFFF5EDED),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 30.0, color: Color(0xFF000000)),
          headline6: TextStyle(fontSize: 24.0, color: Color(0xFF3E3636)),
          bodyText1: TextStyle(fontSize: 16.0, color: Color(0xFF000000)),
          bodyText2: TextStyle(fontSize: 16.0, color: Color(0xFF3E3636)),
        ),
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('GNX'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(),
        body: Subscribe(),
      ),
    );
  }
}
