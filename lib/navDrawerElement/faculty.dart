import 'package:flutter/material.dart';
//import '../NavDrawer.dart';

class Faculty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FacultyState();
}

class FacultyState extends State<Faculty> {
  List<String> eventName = [
    "Event 1",
    "Event 2",
    "Event 3",
    "Event 4",
    "Event 5",
  ];
  List<String> eventDesc = [
    "Lists are Iterable. Iteration occurs over values in index order.",
    "Lists are Iterable. Iteration occurs over values in index order.",
    "Lists are Iterable. Iteration occurs over values in index order.",
    "Lists are Iterable. Iteration occurs over values in index order.",
    "Lists are Iterable. Iteration occurs over values in index order.",
  ];
  List<String> eventDate = [
    "19 June",
    "12 July",
    "25 July",
    "22 August",
    "7 October",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5EDED),
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFD72323),
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
          ],
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.3AtqkAFOqIDmv9w7yf1qSQHaDY?pid=Api&rs=1'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              //alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Text(
                      'Faculty',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    //Display all events
                    for (int i = 0; i < eventName.length; i++)
                      EventCard(
                        eName: eventName[i],
                        eDate: eventDate[i],
                        eDesc: eventDesc[i],
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    @required this.eName,
    @required this.eDate,
    @required this.eDesc,
  });

  final String eName;
  final String eDate;
  final String eDesc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 8.0,
          shadowColor: Colors.black,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Event Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Image(
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.UZbM8du5Qa6F9Ee5nt5tMQHaEo?pid=Api&rs=1',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            eName,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            eDate,
                            style: TextStyle(
                              color: Color(0xFF3E3636),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Description
                Text(
                  eDesc,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
