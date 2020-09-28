import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainBarState();
}

class MainBarState extends State<MainBar> {
  Icon cusIcon = Icon(Icons.search, color: Colors.white);
  Icon cusIcon1 = Icon(
    Icons.perm_identity,
    color: Colors.white,
  );
  Widget cusText = Text("GNX");
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Container(
      width: 300.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(width: 170.0, child: cusText),
          SizedBox(
            width: 50.0,
          ),
          Container(
            width: 30.0,
            child: IconButton(
                icon: cusIcon,
                onPressed: () {
                  setState(() {
                    if (this.cusIcon.icon == Icons.search) {
                      this.cusIcon = Icon(Icons.cancel);
                      this.cusText = Container(
                        width: 300,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          decoration: InputDecoration(border: InputBorder.none),
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      );
                    } else {
                      this.cusIcon = Icon(Icons.search);
                      this.cusText = Text('GNX');
                    }
                  });
                }),
          ),
        ],
      ),
    );
  }
}
