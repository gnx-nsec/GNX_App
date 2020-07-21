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
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.blueAccent,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome!',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Expanded(
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 3.0,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                              hintStyle: Theme.of(context).textTheme.bodyText2,
                              suffixIcon: Icon(
                                Icons.edit,
                                color: Color(0xFF3E3636),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                              hintStyle: Theme.of(context).textTheme.bodyText2,
                              suffixIcon: Icon(
                                Icons.edit,
                                color: Color(0xFF3E3636),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                              hintStyle: Theme.of(context).textTheme.bodyText2,
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
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.white,
                            activeColor: Theme.of(context).primaryColor,
                            title:
                                const Text('Receive monthly newsletter mails'),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
