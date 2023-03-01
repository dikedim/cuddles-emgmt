import 'package:flutter/material.dart';
import 'package:emgmt_cuddles/ui/chat.dart';
import 'package:emgmt_cuddles/models/helper.dart';  //TODO: Only use for cusotom appbar color
//import 'package:emgmt_cuddles/ui/about.dart';
import 'package:emgmt_cuddles/widgets/sidebar.dart';
import 'package:emgmt_cuddles/scr/parent/reportcard.dart';
import 'package:emgmt_cuddles/scr/parent/communication.dart';
import 'package:emgmt_cuddles/scr/parent/attendance.dart';
import 'package:emgmt_cuddles/ui/studtimetable.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'E-management Cuddles',
      theme: ThemeData(
        brightness: Brightness.light,
        //primarySwatch: Colors.orange,
        primaryColor: Colors.white
        //TODO: custom code for app bar color. ## import helper.dart to use
        //appBarTheme: AppBarTheme(
          //color: Color(webColor('#FFFFFF')),
        //)
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        drawer: SidebarNav(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Container(
              padding: EdgeInsets.only(top: 30),
              child: Text('Admin', style: TextStyle(
                fontSize: 32.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold)),
            ),
              //alignment: TextAlign.center,
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ButtonBar(
                        buttonPadding: EdgeInsets.only(left:5, right: 5, top: 2),
                        mainAxisSize: MainAxisSize.min,
                        alignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                          Container(
                            width: 390.0,
                            height:85.0,
                            child: Builder(
                              builder: (context) => MaterialButton(
                                elevation:5.0,
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => new Attendance())
                                  );
                                },
                                color: Color(webColor('#F97611')),
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  "Attendance", 
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Montserratalternates')),
                                textColor: Colors.white,
                                splashColor: Colors.grey,
                              ),
                            ),
                          ),
                        ]),
                    ),
                    //SizedBox(height: 8),
                    ButtonBar(
                      buttonPadding: EdgeInsets.only(left:5, top: 1, right: 5),
                      mainAxisSize: MainAxisSize.min,
                      alignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        Container(
                        width: 186.0,
                        height:80.0,
                        child: Builder(
                          builder: (context) => MaterialButton(
                            elevation:5.0,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) => new ClassSchedule())
                              );
                            },
                            color: Color(webColor('#0D39E9')),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                            child: Text(
                              "Time Table", 
                              style: TextStyle(
                              fontFamily: 'MontserratAlternates',
                              fontSize: 20)),
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                      ),
                        ),
                    ),
                    Container(
                        width: 186.0,
                        height:80.0,
                        child: Builder(
                          builder: (context) => MaterialButton(
                            elevation:5.0,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) => new ReportCard())
                              );
                            },
                          color: Color(webColor('#2C853E')),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                          child: Text(
                            "Report Card", 
                            style: TextStyle(
                            fontFamily: 'Montserratalternates',
                            fontSize: 20)),
                          textColor: Colors.white,
                          splashColor: Colors.grey,
                      ),
                        ),
                    ),
                      ]),
                    
                    //SizedBox(height: 8),
                    ButtonBar(
                      buttonPadding: EdgeInsets.only(left:5, top: 2, right: 5),
                      mainAxisSize: MainAxisSize.min,
                      alignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Container(
                          width: 250.0,
                          height:80.0,
                          child: Builder(
                            builder: (context) => MaterialButton(
                              elevation:5.0,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => new Communication())
                                );
                              },
                        //color: Colors.yellow,
                              color: Color(webColor('#F8CB15')),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                "Communication", 
                                style: TextStyle(
                                fontFamily: 'MontserratAlternates',
                                fontSize: 20)),
                              textColor: Colors.black,
                              splashColor: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          width: 122.0,
                          height:80.0,
                          child: Builder(
                            builder: (context) => MaterialButton(
                              elevation:5.0,
                              onPressed: (){
                                //Navigator.of(context).pop();
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => new ChatPage())
                                );
                              },
                        //color: Colors.yellow,
                              color: Color(webColor('#898A83')),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                "Chat", 
                                style: TextStyle(
                                fontFamily: 'MontserratAlternates',
                                fontSize: 20)),
                                textColor: Colors.black,
                                splashColor: Colors.grey,
                            ),
                          ),
                        ),
                      ]),
                    //TODO Fox button to page navigation (start from chat)
                    //SizedBox(height: 8.0),
                    ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      buttonPadding: EdgeInsets.only(left:5, top: 2, right: 5),
                      children:<Widget>[
                      Container(
                        width: 90.0,
                        height:80.0,
                        child: MaterialButton(
                          elevation:5.0,
                          onPressed: (){},
                        //color: Colors.yellow,
                          color: Color(webColor('#11BAF9')),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "Home Work", 
                            style: TextStyle(
                              fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                              fontSize: 20),
                              textAlign: TextAlign.center,
                          ),
                          textColor: Colors.black,
                          splashColor: Colors.grey,
                        ),
                      ),
                      Container(
                        width: 90.0,
                        height:80.0,
                        child: MaterialButton(
                          elevation:5.0,
                          onPressed: (){},
                        //color: Colors.yellow,
                          color: Color(webColor('#000000')),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "Sports", 
                            style: TextStyle(
                              fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                              fontSize: 20),
                              textAlign: TextAlign.center,
                          ),
                          textColor: Colors.white,
                          splashColor: Colors.grey,
                        ),
                      ),
                      Container(
                        width: 90.0,
                        height:80.0,
                        child: MaterialButton(
                          elevation:5.0,
                          onPressed: (){},
                        //color: Colors.yellow,
                          color: Color(webColor('#11F947')),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "Clubs", 
                            style: TextStyle(
                              fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                              fontSize: 20),
                              textAlign: TextAlign.center,
                          ),
                          textColor: Colors.black,
                          splashColor: Colors.grey,
                        ),
                      ),
                      Container(
                        width: 90.0,
                        height:80.0,
                        child: MaterialButton(
                          elevation:5.0,
                          onPressed: (){},
                        //color: Colors.yellow,
                          color: Color(webColor('#11F9E1')),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "Events", 
                            style: TextStyle(
                              fontFamily: 'Montserratalternates',
                              //fontWeight: FontWeight.w900,
                              fontSize: 20),
                              textAlign: TextAlign.center,
                          ),
                          textColor: Colors.black,
                          splashColor: Colors.grey,
                        ),
                      ),
                      ]),
                    //SizedBox(height: 8.0),
                      ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      buttonPadding: EdgeInsets.only(left:5, top: 2, right: 5),
                      children:<Widget>[
                      Container(
                      width: 115.0,
                      height:80.0,
                      child: MaterialButton(
                        onPressed: (){},
                        //color: Colors.yellow,
                        color: Color(webColor('#2D0B7F')),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                        elevation:5.0,
                        child: Text(
                          "Meals", 
                          style: TextStyle(
                            fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                            fontSize: 20),
                            textAlign: TextAlign.center,
                            ),
                        textColor: Colors.white,
                        splashColor: Colors.grey,
                      ),
                    ),
                    Container(
                      width: 142.0,
                      height:80.0,
                      child: MaterialButton(
                        onPressed: (){},
                        //color: Colors.yellow,
                        color: Color(webColor('#850E82')),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                        elevation:5.0,
                        child: Text(
                          "Holidays", 
                          style: TextStyle(
                            fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                            fontSize: 20),
                            textAlign: TextAlign.center,
                            ),
                        textColor: Colors.white,
                        splashColor: Colors.grey,
                      ),
                    ),
                    Container(
                      width: 110.0,
                      height:80.0,
                      child: MaterialButton(
                        onPressed: (){},
                        //color: Colors.yellow,
                        color: Color(webColor('#E41286')),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                        elevation:5.0,
                        child: Text(
                          "School Bus", 
                          style: TextStyle(
                            fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                            fontSize: 20),
                            textAlign: TextAlign.center,
                            ),
                        textColor: Colors.white,
                        splashColor: Colors.grey,
                      ),
                    ),
                      ]),
                    //SizedBox(height: 8.0),
                    ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      buttonPadding: EdgeInsets.only(left:5, top: 2, right: 5),
                      children:<Widget>[
                      Container(
                      width: 105.0,
                      height:80.0,
                      child: MaterialButton(
                        onPressed: (){},
                        //color: Colors.yellow,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20.0)),
                        elevation:5.0,
                        child: Text(
                          "Fees", 
                          style: TextStyle(
                            fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                            fontSize: 20),
                            textAlign: TextAlign.center,
                            ),
                        textColor: Colors.black,
                        splashColor: Colors.grey,
                      ),
                    ),
                      Container(
                      width: 240.0,
                      height:80.0,
                      child: MaterialButton(
                        onPressed: (){},
                        //color: Colors.yellow,
                        color: Color(webColor('#FF0011')),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                        elevation: 5.0,
                        //animationDuration: Duration(seconds: 5),
                        child: Text(
                          "Announcements", 
                          style: TextStyle(
                            fontFamily: 'MontserratAlternates',
                            //fontWeight: FontWeight.normal,
                            fontSize: 20),
                            textAlign: TextAlign.center,
                            ),
                        textColor: Colors.white,
                        splashColor: Colors.grey,
                      ),
                    ),
                    ])
                    
                  ],
                ),
              ))
          ],
        )
      )
      
    );
  }
}