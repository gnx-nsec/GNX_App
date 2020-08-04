import 'package:flutter/material.dart';

class Faculty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FacultyState();
}

class FacultyState extends State<Faculty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff6f00),
        title: Text("Faculty"),
      ),
    );
  }
}
