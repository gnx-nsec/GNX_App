import 'package:flutter/material.dart';
import 'package:gnxapp/NavDrawer.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  int _page = 0;
  // ignore: unused_field
  PageController _abs;
  @override
  // ignore: must_call_super
  void initState() {
    _abs = PageController(initialPage: _page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xffff6f00),
        title: Text('GNX'),
      ),
    );
  }
}
