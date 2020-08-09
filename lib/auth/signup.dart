import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);

  //final String title;

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final userName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          ),
        ),
      ),
    );
    final userEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          ),
        ),
      ),
    );
    final userPasswd = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          ),
        ),
      ),
    );
    final signUpButton = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: Container(
              width: 220.0,
              height: 60.0,
              child: RaisedButton(
                child:Text('Sign Up',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0)),
                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                    onPressed: () => {
                      },
                ),
              ),
      ),
    );
    return SafeArea(
      left: true,
      right: true,
      top: true,
      bottom: true,
      child: Scaffold(
        body:Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: <Widget>[
              userName,
              userEmail,
              userPasswd,
              signUpButton
            ],
          ),)
      ),
    );
  }
}