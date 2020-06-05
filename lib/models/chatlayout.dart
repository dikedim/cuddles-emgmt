import 'package:flutter/material.dart';
import './helper.dart';

class ChatLayout extends StatefulWidget {
  @override
  _ChatLayoutState createState() => _ChatLayoutState();
  
  final String lastMessage;

  final DateTime messageTime;

  final String userName;

  ChatLayout({Key key, this.lastMessage, this.messageTime, this.userName});
  //      : super(key: key);
}

class _ChatLayoutState extends State<ChatLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      height: 100.0,
      color: Color(webColor('#898A83')),
      child: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
              radius: 25.0,
              child: Text("T",
                style: Theme.of(context).textTheme.display2.apply(color: Colors.white, fontWeightDelta: 3)),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text(widget.userName,
              style: Theme.of(context).textTheme.title,
              ),
              Text(widget.lastMessage,
              style: Theme.of(context).textTheme.subtitle2,
              ),
              Text('User 3',
              style: Theme.of(context).textTheme.bodyText2,
              ),
              ],
            ),
          ),
          Center(
            child: Text(widget.messageTime.toIso8601String()),
          ),
          /* Center(
            child: CircleAvatar(
              radius: 25.0,
              child: Text("T",
                style: Theme.of(context).textTheme.display2.apply(color: Colors.white, fontWeightDelta: 3)),
            ),
          ) */
        ],
      ),
    );
  }
}


//TODO Avatar with border snippet
// CircleAvatar(
//   radius: 25,
//   backgroundColor: Color(webColor('##F8CB15')),
//   child:  CircleAvatar(
//     radius: 20,
//     backgroundImage:  AssetImage('assets/images/user.png'),
//   ),
// )