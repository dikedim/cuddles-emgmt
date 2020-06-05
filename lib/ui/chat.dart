import 'package:flutter/material.dart';
import '../models/helper.dart';
//import 'package:emgmt_cuddles/models/chatlayout.dart';
import '../models/chatlayout.dart';
import '../widgets/sidebar.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color(webColor('#000000')),
          title: Text("Chat",
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
            color: Color(webColor('#898A83')),
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