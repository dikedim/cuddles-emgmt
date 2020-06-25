import 'package:flutter/material.dart';
import './helper.dart';

class ChatView extends StatefulWidget {
  ChatView({Key key, this.peerName: "", this.lastMessage: "", /*this.peerName: "gee"*/}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();

  final String peerName;
  final String lastMessage;
  //final String peerName;
}

class _ChatViewState extends State<ChatView> {

  String _peerName;

  TextEditingController _controller = TextEditingController();

  @override
    void initState(){
      setState(() {
        _peerName = widget.peerName.substring(0,1);
      });
      super.initState();
    }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.peerName),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
                      child: ListView(
              children: <Widget>[
                ChatMessages(peerName: _peerName, message: "It's about to go down",),
              ],

            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  controller:  _controller,
                  onFieldSubmitted: (String _message ){},
                  decoration: InputDecoration(
                    hintText: "Enter your message",
                  ),
                )
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: null, ///TODO add button code
              )
            ],
        ),
          ),
        ],
      ),
      /*bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextFormField()),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: null, ///TODO add button code
            )
          ],
        ),
      ),*/
      
    );
  }
}

class ChatMessages extends StatefulWidget {
  @override
  _ChatMessagesState createState() => _ChatMessagesState();

  //final bool isFriend;
  //final bool isPrevious;
  final String message;
  final String peerName;

  ChatMessages({
    Key key,
    //this.isFriend,
    this.message: "",
    this.peerName: "",
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
          Text(widget.message),
        ],
      ),
    );
  }
}