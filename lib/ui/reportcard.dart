import 'package:flutter/material.dart';
import '../models/helper.dart';

class ReportCard extends StatefulWidget {
  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        endDrawer: Drawer(),
        endDrawerEnableOpenDragGesture: true,
        appBar: AppBar(
          backgroundColor: Color(webColor('#2C853E')),
          centerTitle: true,
          title: Text("Report Card",
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
          //actions: <Widget>[ 
            /*IconButton(
              //icon: Icon(Icons.arrow_back_ios),
              icon: Icon(Icons.more_vert),
              onPressed: () {
                //Navigator.of(context).pop();
              //print("button");
            },
            )*/
          //],
        ),
        body: ListView(
          children: <Widget>[
            //ChatLayout(), //TODO add userName, lastMessage, messageTime
            //ChatLayout(),
            //ChatLayout(),
            //ChatLayout(),
            //ChatLayout(),
          ],
        ),
       /* endDrawer: Drawer(
          elevation: 12.0,
          child: Column(children: <Widget>[
            
          ],)
        ),*/
      ),
      
    );
  }
}