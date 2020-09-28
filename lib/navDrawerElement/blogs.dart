import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gnxapp/MyAppBar.dart';
import '../NavDrawer.dart';
import '../MyAppBar.dart';

class Blog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BlogState();
}

class BlogState extends State<Blog> {
  String itemsName = "";
  var _tech = [
    "Android",
    "Web Development",
    "Blockchain",
    "Machine Learning",
    "Linux",
    "Mobile App Development",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: NavDrawer(), body: ExtendedAppBar());
  }
}

class ExtendedAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ExtenState();
}

class ExtenState extends State<ExtendedAppBar> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: Color(0xffd72323),
            title: MainBar(),
            pinned: true,
            expandedHeight: 320.0,
            flexibleSpace: FlexBar()),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
          Container(
            height: 150.0,
            child: Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.network(
                        "https://s30776.pcdn.co/wp-content/uploads/2020/04/AdobeStock_305233591.jpeg"),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      child: FittedBox(
                        child: Container(
                          width: 250,
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Container(
                                    child: Text(
                                  "Advantages of Linux over Windows and MacOs",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 20.0),
                                )),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Posted on 12th July")),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 150.0,
            thickness: 1.0,
          )
        ]))
      ],
    );
  }
}

class FlexBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FlexBarState();
}

class FlexBarState extends State<FlexBar> {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      centerTitle: true,
      background: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Blogs",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  "Search our latest blogs with tags!...",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Wrap(
                verticalDirection: VerticalDirection.down,
                spacing: 3.0,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 120.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Android",
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(Icons.cancel)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 180.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Web Development",
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.cancel)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 100.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Linux",
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(Icons.cancel)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Blockchain",
                              style: TextStyle(fontSize: 18.0),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(Icons.cancel)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 210.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Machine Learning",
                              style: TextStyle(fontSize: 18.0),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(Icons.cancel)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
