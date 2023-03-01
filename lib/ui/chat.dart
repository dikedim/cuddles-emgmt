import 'package:flutter/material.dart';
import '../models/helper.dart';
import '../models/chatlayout.dart';
//import 'package:emgmt_cuddles/models/chatlayout.dart';
//import '../models/chatlayout.dart';
import '../widgets/sidebar.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _currentIndex = 0; 
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
            color: Color(webColor('##D4B9B9')),
          ),
          child: ListView(
            children: <Widget>[
              //ChatLayout(), //TODO add peerName, lastMessage, messageTime
              ChatLayout(peerName: "User",
              lastMessage: "Prmary 3 assignment",
              messageTime: DateTime.now(),
              ),
              Divider(),
              ChatLayout(peerName: "John",
              lastMessage: "Prmary 1 assignment",
              messageTime: DateTime.now(),
              ),
              //ChatLayout(),
              //ChatLayout(),
              //ChatLayout(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: 'Messsages'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: null,
        child: Icon(Icons.add), backgroundColor: Colors.red,), 
      ),
      
    );
  }
}