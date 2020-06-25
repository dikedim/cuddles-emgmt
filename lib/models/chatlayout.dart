import 'package:emgmt_cuddles/models/chatview.dart';
import 'package:flutter/material.dart';
import './helper.dart';

//initial chat page

class ChatLayout extends StatefulWidget {
  @override
  _ChatLayoutState createState() => _ChatLayoutState();
  
  final String lastMessage;

  final DateTime messageTime;

  final String peerName;

  ChatLayout({
    Key key,
    this.lastMessage,
    this.messageTime,
    this.peerName}); //: super(key: key);
}

class _ChatLayoutState extends State<ChatLayout> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
        await Navigator.of(context).push(MaterialPageRoute<Null>(
          builder: (BuildContext context){
            return ChatView(
              peerName: widget.peerName,
              lastMessage: "This is a test",
            );
        },
        fullscreenDialog: true));
      },
          child: Container(
        //padding: EdgeInsets.all(8.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        width: double.infinity,
        height: 100.0,
        color: Color(webColor('#898A83')),
        child: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            /*CircleAvatar(
                radius: 25.0,
                child: Text("T",
                  style: Theme.of(context).textTheme.headline3.apply(color: Colors.white, fontWeightDelta: 3)),
              ),*/
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(widget.peerName,
                style: Theme.of(context).textTheme.headline6,
                ),
                Text(widget.lastMessage,
                style: Theme.of(context).textTheme.subtitle2,
                ),
                Text("User 3",
                style: Theme.of(context).textTheme.bodyText2,
                ),
                ],
              ),
            ),
            /*Center(
              child: Text(widget.messageTime.toIso8601String()),
            ),*/
            Center(
              child: CircleAvatar(
                radius: 25.0,
                child: Text(widget.peerName.substring(0,1),
                  style: Theme.of(context).textTheme.headline4.apply(color: Colors.white, fontWeightDelta: 3)),
              ),
            )
          ],
        ),
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