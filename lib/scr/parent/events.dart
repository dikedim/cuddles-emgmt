import 'package:flutter/material.dart';
import 'package:emgmt_cuddles/models/helper.dart';

class Events extends StatefulWidget {
  Events({Key key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color(webColor('#000000')),
          title: Text("Events Section",
          style: TextStyle(
            color: Colors.white
          ),),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          centerTitle: true,
          actions: <Widget>[
            Builder(builder: (context) => IconButton(icon: Icon(Icons.more_vert), onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,))
          ],
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: Color(webColor('#11F9E1')),
          ),
          child: ListView(
            children: <Widget>[
              //ChatLayout(), //TODO add userName, lastMessage, messageTime
            ],
          ),
        ),
      ),
    );
  }
}