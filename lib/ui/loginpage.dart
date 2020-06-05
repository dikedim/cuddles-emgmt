import 'package:flutter/material.dart';

//TODO Fix Safearea
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final userLogo = Padding (
      padding: EdgeInsets.all(20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          radius: 60.0,
          child: Image.asset('assets/images/logo.png'),
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
    final loginButton = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child:Text('Login',
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
    );
    final forgotPasswd = FlatButton(
      onPressed: null,
      child: Text('Forgot Password?',
      style: TextStyle(color: Colors.grey,
      fontSize: 14),
      ),
    );
    return SafeArea(
      left: true,
      right: true,
      bottom: true,
      top: true,
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: <Widget>[
              userLogo,
              userEmail,
              userPasswd,
              loginButton,
              forgotPasswd
            ],
          ),
        )
      ),
    );
  }
}