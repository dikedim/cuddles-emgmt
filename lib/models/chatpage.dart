import 'package:flutter/material.dart';
import './helper.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User handle"),
      ),
      body: ListView(
        children: <Widget>[
          ChatMessages(),
        ],

      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(child: Text("Enter your message")),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: null, ///TODO add button code
            )
          ],
        ),
      ),
      
    );
  }
}

class ChatMessages extends StatefulWidget {
  @override
  _ChatMessagesState createState() => _ChatMessagesState();

  final bool isFriend;
  //final bool isPrevious;

  ChatMessages({
    Key key,
    this.isFriend,
    //this.isFriend : true,
    //this.isPrevious: false,
  }) : super(key:key);
}

class _ChatMessagesState extends State<ChatMessages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      color: Color(webColor('#D4B9B9')),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //widget.isFriend && widget.isPrevious?
          CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
          ),
          Text("Chat here"),
        ],
      ),
    );
  }
}