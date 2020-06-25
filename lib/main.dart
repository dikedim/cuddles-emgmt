import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/splash.dart';
import 'ui/scaffold.dart';
//import 'ui/user.dart';
import 'package:time_machine/time_machine.dart';
//import 'models/chatlayout.dart';

//void main() => runApp(Homescreen());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TimeMachine.initialize({'rootBundle': rootBundle});
  
  runApp(Homescreen());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-management Cuddles',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.black,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


