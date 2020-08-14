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
      body: Center(
        child: Stack(
          children: <Widget>[
            // Top red container
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              color: Color(0xffff6f00),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
