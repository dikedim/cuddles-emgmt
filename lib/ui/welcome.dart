import 'package:flutter/material.dart';
import 'package:emgmt_cuddles/widgets/splashscr.dart';

//TODO SPlash scrren for new users

class WelcomeSplash extends StatefulWidget {
  @override
  _WelcomeSplashState createState() => _WelcomeSplashState();
}

class _WelcomeSplashState extends State<WelcomeSplash> {
  List<Widget> slides = splashpages.map((item) => Container(
    padding: EdgeInsets.symmetric(horizontal: 18.0),
    child: Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Image.asset(
            item['image'],
            fit: BoxFit.fitWidth,
            width: 220.0,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: <Widget>[
                Text(item['header'],
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 50.0,
                    color: Color(0XFF3FD56),
                    height: 2.0,),
                ),
                Text(item['description'],
                  style: TextStyle(
                    letterSpacing: 1.2,
                    fontSize: 16.0,
                    color: Colors.grey,
                    height: 2.0,),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    ),
  ))
  .toList();

  List<Widget> swipe() => List<Widget>.generate(
        slides.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 3.0),
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            color: setPage.round() == index
              ? Color(0XFF256075)
              : Color(0XFF256075).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10.0)),
        ));

  double setPage = 0.0;
  final _splashPageController = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView.builder(
              itemBuilder: (BuildContext context, int index){
                _splashPageController.addListener(() {
                  setState((){
                    setPage = _splashPageController.page;
                  });
                });
                return slides[index];
              }, 
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 70.0),
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: swipe(),
                )
              ))
          ],
        ),
      ),
    );
  }
}