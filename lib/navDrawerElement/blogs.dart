import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BlogState();
}

class BlogState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff6f00),
        title: Text("Blogs"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                  image: NetworkImage(
                      'https://www.ecampusnews.com/files/2016/01/blogs.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}
