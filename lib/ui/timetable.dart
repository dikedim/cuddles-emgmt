import 'package:flutter/material.dart';
import '../models/helper.dart';

class TimeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        endDrawer: Drawer(),
        endDrawerEnableOpenDragGesture: true,
        appBar: AppBar(
          backgroundColor: Color(webColor('#000000')),
          centerTitle: true,
          title: Text("TimeTable",
          style: TextStyle(
            color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          actions: <Widget>[
            Builder(builder: (context) => IconButton(icon: Icon(Icons.more_vert), onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,))
          ],
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: Color(webColor('#0D39E9'))
          ),
          child: ListView(
            children: <Widget>[
              //ChatLayout(), //TODO add userName, lastMessage, messageTime
              //ChatLayout(),
            ],
          ),
        ),
      ),
      
    );
  }
}