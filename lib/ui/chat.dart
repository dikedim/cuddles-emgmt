import 'package:emgmt_cuddles/models/chatlayout.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Chat"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
            onPressed: () {
              print("button");
            },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            ChatLayout(), //TODO add userName, lastMessage, messageTime
            ChatLayout(),
            ChatLayout(),
            ChatLayout(),
            ChatLayout(),
          ],
        ),
      ),
      
    );
  }
}