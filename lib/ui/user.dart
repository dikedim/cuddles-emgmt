import 'package:emgmt_cuddles/models/helper.dart';
import 'package:flutter/material.dart';
import 'chat.dart';
import 'package:emgmt_cuddles/scr/parent/parentDash.dart';

class SelectUser extends StatefulWidget {
  SelectUser({Key key}) : super(key: key);

  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Expanded(child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Text('Select Role:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'MontserratAlternates',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: ButtonBar(
                          buttonPadding: EdgeInsets.only(left:5, top: 1, right: 5),
                          mainAxisSize: MainAxisSize.max,
                          alignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            Container(
                            width: 186.0,
                            height:250.0,
                            child: Builder(
                              builder: (context) => RaisedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => new ChatPage())
                                  );
                                },
                                color: Color(webColor('#2D0B7F')),
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                                child: Text(
                                  "Student", 
                                  style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25)),
                                textColor: Colors.white,
                                splashColor: Colors.grey,
                          ),
                            ),
                        ),
                        Container(
                            width: 186.0,
                            height:250.0,
                            child: Builder(
                              builder: (context) => RaisedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => new ChatPage())
                                  );
                                },
                              color: Color(webColor('#2D0B7F')),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                              child: Text(
                                "Teacher", 
                                style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600,
                                fontSize: 25)),
                              textColor: Colors.white,
                              splashColor: Colors.grey,
                          ),
                            ),
                        ),
                          ]),
                  ),
                  ButtonBar(
                        buttonPadding: EdgeInsets.only(left:5, top: 1, right: 5),
                        mainAxisSize: MainAxisSize.min,
                        alignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                          Container(
                          width: 186.0,
                          height:250.0,
                          child: Builder(
                            builder: (context) => RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => new ParentDashboard())
                                );
                              },
                              color: Color(webColor('#2D0B7F')),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                              child: Text(
                                "Parent", 
                                style: TextStyle(
                                fontFamily: 'MontserratAlternates',
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600,
                                fontSize: 25)),
                              textColor: Colors.white,
                              splashColor: Colors.grey,
                        ),
                          ),
                      ),
                      Container(
                          width: 186.0,
                          height:250.0,
                          child: Builder(
                            builder: (context) => RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => new ChatPage())
                                );
                              },
                            color: Color(webColor('#2D0B7F')),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                            child: Text(
                              "Administrator", 
                              style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              fontSize: 25)),
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                        ),
                          ),
                      ),
                        ]),
              ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}