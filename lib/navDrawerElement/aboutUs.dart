import 'package:flutter/material.dart';

class AboutUS extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AboutUSState();
}

class AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff6f00),
        title: Text("About Us"),
      ),
    );
  }
}
