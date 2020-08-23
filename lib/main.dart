import 'package:flutter/material.dart';
import 'package:gnxapp/events/events.dart';
import 'package:gnxapp/subscribe/subscribe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GNX App',
      home: Events(),
    );
  }
}
