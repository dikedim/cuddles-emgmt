import 'package:flutter/material.dart';
import '../models/helper.dart';

class Communication extends StatefulWidget {
  Communication({Key key}) : super(key: key);

  @override
  _CommunicationState createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color(webColor('#000000')),
          title: Text("Communication Section",
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
            color: Color(webColor('#F8CB15')),
          ),
          child: ListView(
            children: <Widget>[
              //ChatLayout(), //TODO add userName, lastMessage, messageTime
              //ChatLayout(),
              //ChatLayout(),
              //ChatLayout(),
              //ChatLayout(),
            ],
          ),
        ),
      ),
    );
  }
}