import 'dart:ui';

import 'package:flutter/material.dart';

class Subscribe extends StatefulWidget {
  @override
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  bool _termsChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0,
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
        drawer: Drawer(
          child: ListView(),
        ),
        body: Stack(
          children: <Widget>[
            // Top red container
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            //Profile Card
            Container(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  //Container for card and textbox
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 8.0,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.add_photo_alternate,
                                size: 25.0,
                              ),
                              onPressed: () {},
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 10.0,
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFF5EDED),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'User Name',
                                  hintStyle:
                                      Theme.of(context).textTheme.bodyText2,
                                  suffixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xFF3E3636),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 10.0,
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFF5EDED),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Email',
                                  hintStyle:
                                      Theme.of(context).textTheme.bodyText2,
                                  suffixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xFF3E3636),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 10.0,
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFF5EDED),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Phone',
                                  hintStyle:
                                      Theme.of(context).textTheme.bodyText2,
                                  suffixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xFF3E3636),
                                  ),
                                ),
                              ),
                            ),
                            ListTileTheme(
                              contentPadding: EdgeInsets.all(0),
                              child: CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                checkColor: Colors.white,
                                activeColor: Theme.of(context).primaryColor,
                                title: const Text('Receive newsletter mails'),
                                value: _termsChecked,
                                onChanged: (value) {
                                  setState(() {
                                    _termsChecked = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //User Profile Image
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundColor: Colors.blueAccent,
                    ),
                  ),

                  //Confirm button
                  Align(
                    alignment: Alignment(1.1, 0.85),
                    child: Container(
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 3.0,
                        fillColor: Theme.of(context).primaryColor,
                        child: Icon(
                          Icons.check,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8.0),
                        shape: CircleBorder(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
