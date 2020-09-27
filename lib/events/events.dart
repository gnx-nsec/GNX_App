import 'package:flutter/material.dart';
import 'package:gnxapp/events/eventClass.dart';
import 'package:http/http.dart' as http;

class Events extends StatefulWidget {
  static const String routeName = 'events_screen';

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  String url = "https://gnx-backend.herokuapp.com/event/view";
  List<EventClass> _eventClass;

  @override
  void initState() {
    super.initState();
    this.assignList();
  }

  void assignList() async {
    List<EventClass> eClass = await getJsonData();
    setState(() {
      _eventClass = eClass;
    });
  }

  Future<List<EventClass>> getJsonData() async {
    final response = await http.post(url);

    if (response.statusCode == 200) {
      return eventClassFromJson(response.body);
    } else {
      throw Exception('Failed to load event data');
    }
  }

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
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(),
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/events_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Text(
                      'Events',
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
                    for (int i = 0;
                        i < (_eventClass == null ? 0 : _eventClass.length);
                        i++)
                      EventCard(
                        eName: _eventClass[i].name,
                        eDate: _eventClass[i].date,
                        eDesc: _eventClass[i].speakerDes,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //Name
                    Text(
                      eName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //Check event details
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                //Date
                Text(
                  eDate,
                  style: TextStyle(
                    color: Color(0xFF3E3636),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
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
          height: 10.0,
        ),
      ],
    );
  }
}
