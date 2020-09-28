import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/binding.dart';
//import 'package:gnxapp/MyAppBar.dart';

class AboutUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AboutUsState();
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD72323),
        title: Text('GNX'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.00, vertical: 5.00),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.21,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image(
                image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.sSDk-u2-uxCoZ1yGc7IjAgHaDN?pid=Api&rs=1',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.00, vertical: 3.00),
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            color: Colors.red[100],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Core Members',
                style: TextStyle(color: Colors.black87, fontSize: 21.00),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.0),
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Image(
                                image: NetworkImage(
                                  'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.00, vertical: 3.00),
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            color: Colors.red[100],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Developers',
                style: TextStyle(color: Colors.black87, fontSize: 21.00),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.0),
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    color: Color(0xFFD72323),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 2.0),
                            child: Column(
                              children: <Widget>[
                                Text('Facebook'),
                                Text('Github'),
                                Text('LinkrdIn'),
                                Text('Twitter'),
                              ],
                            ),
                          ),
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
    );
  }
}
