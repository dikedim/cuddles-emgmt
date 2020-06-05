import 'package:flutter/material.dart';
import '../ui/about.dart';

class SidebarNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'User',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
                accountEmail: Text('User@user.com'),
                currentAccountPicture: CircleAvatar(
                  //radius: 30.0,
                  //backgroundImage: Image.asset('assets/images/logo.png'),
                  backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_outline,
                color: Colors.green,
                size: 24.0,),
                title: Text('Profile',
                style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16)),
                onTap: (){
                  Navigator.of(context).pop();
                  //Navigator.push(context, MaterialPageRoute(
                    //builder: (BuildContext context) => new AboutPage())
                    //);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings_applications,
                color: Colors.grey,
                size: 24.0,),
                title: Text('Settings',
                style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18)),
                onTap: (){
                  Navigator.of(context).pop();
                  //Navigator.push(context, MaterialPageRoute(
                    //builder: (BuildContext context) => new AboutPage())
                    //);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('F.A.Q',
                style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18)),
                onTap: (){
                  Navigator.of(context).pop();
                  //Navigator.push(context, MaterialPageRoute(
                    //builder: (BuildContext context) => new AboutPage())
                    //);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.live_help),
                title: Text('About',
                style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18)),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => new AboutPage())
                    );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.arrow_back_ios),
                title: Text('Logout',
                style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18)),
                onTap: (){
                  Navigator.of(context).pop();
                  //Navigator.push(context, MaterialPageRoute(
                    //builder: (BuildContext context) => new AboutPage())
                    //);
                },
              ),
            ],
            ),
        );
  }
}