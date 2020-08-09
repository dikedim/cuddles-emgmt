import 'package:flutter/material.dart';
import 'package:emgmt_cuddles/models/helper.dart';

class ReportCard extends StatefulWidget {
  @override
  _ReportCardState createState() => _ReportCardState();
}
//TODO figure out dropdown
class _ReportCardState extends State<ReportCard> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Fisrt child"),
    ListItem(2, "second")
  ];
  List<ListItem> _years = [
    ListItem(1, "Pri. 1"),
    ListItem(1, "Pri. 2"),
    ListItem(1, "Pri. 3"),
    ListItem(1, "Pri. 4"),
    ListItem(1, "Pri. 5"),
    
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState(){
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
    _dropdownMenuItems = buildDropDownMenuItems(_years);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems){
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems){
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        endDrawer: Drawer(),
        endDrawerEnableOpenDragGesture: true,
        appBar: AppBar(
          backgroundColor: Color(webColor('#2C853E')),
          centerTitle: true,
          title: Text("Report Card",
          style: TextStyle(
            color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          actions: <Widget>[
            Builder(builder: (context) => IconButton(icon: Icon(Icons.more_vert), onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,))
          ],
          //actions: <Widget>[ 
            /*IconButton(
              //icon: Icon(Icons.arrow_back_ios),
              icon: Icon(Icons.more_vert),
              onPressed: () {
                //Navigator.of(context).pop();
              //print("button");
            },
            )*/
          //],
        ),
        body: Column(
          children: <Widget>[
            ButtonBar(
              buttonPadding: EdgeInsets.only(left:5, top: 1, right: 5),
                        mainAxisSize: MainAxisSize.min,
                        alignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10.0)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: _selectedItem,
                                items:  _dropdownMenuItems,
                                onChanged: (value){
                                  setState(() {
                                    _selectedItem = value;
                                  });
                                }),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10.0)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: _selectedItem,
                                items:  _dropdownMenuItems,
                                onChanged: (value){
                                  setState(() {
                                    _selectedItem = value;
                                  });
                                }),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10.0)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: _selectedItem,
                                items:  _dropdownMenuItems,
                                onChanged: (value){
                                  setState(() {
                                    _selectedItem = value;
                                  });
                                }),
                            ),
                          ),
                        ]
            )
            /*Padding(
              padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10.0)),
              child: DropdownButtonHideUnderline(child: 
              DropdownButton(
                value: _selectedItem,
                items:  _dropdownMenuItems,
                onChanged: (value){
                  setState(() {
                    _selectedItem = value;
                  });
                }),
                ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10.0)),
              child: DropdownButtonHideUnderline(child: 
              DropdownButton(
                value: _selectedItem,
                items:  _dropdownMenuItems,
                onChanged: (value){
                  setState(() {
                    _selectedItem = value;
                  });
                }),
                ),
            ),
            ),*/
            //Text("You select ${_selectedItem.name}"),
            //ChatLayout(), //TODO add userName, lastMessage, messageTime
            //ChatLayout(),
            //ChatLayout(),
            //ChatLayout(),
            //ChatLayout(),
          ],
        ),
       /* endDrawer: Drawer(
          elevation: 12.0,
          child: Column(children: <Widget>[
            
          ],)
        ),*/
      ),
      
    );
  }
}

class ListItem{
  int value;
  String name;

  ListItem(this.value, this.name);
}