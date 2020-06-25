import 'package:flutter/material.dart';
import 'package:emgmt_cuddles/models/helper.dart';
//import 'package:flutter/services.dart';
import 'package:time_machine/time_machine.dart';
import 'package:timetable/timetable.dart';

//import 'positioning_demo.dart';
// import 'utils.dart';

class ClassSchedule extends StatefulWidget {
  @override
  _ClassScheduleState createState() => _ClassScheduleState();
}

class _ClassScheduleState extends State<ClassSchedule> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TimetableController<BasicEvent> _controller;

  @override
  void initState(){
    super.initState();
    _controller = TimetableController(
      eventProvider: EventProvider.list([
        BasicEvent(
          id: 0,
          title: 'Math',
          color: Colors.amber,
          start: LocalDate.today().at(LocalTime(13, 0, 0)),
          end: LocalDate.today().at(LocalTime(15, 0, 0)),
          ),
      ]),
      //eventProvider: positioningDemoEventProvider, 
      initialTimeRange: InitialTimeRange.range(
        startTime: LocalTime(8, 0, 0),
        endTime: LocalTime(13, 0, 0),
      ),
      initialDate: LocalDate.today(),
      visibleRange: VisibleRange.days(5),
      firstDayOfWeek: DayOfWeek.monday,
    );
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Drawer(),
        endDrawerEnableOpenDragGesture: true,
        appBar: AppBar(
          backgroundColor: Color(webColor('#000000')),
          centerTitle: true,
          title: Text("TimeTable",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.today), 
              onPressed: () =>  _controller.animateToToday(),
              tooltip: 'Jump to today',
            ),
            Builder(builder: (context) => IconButton(icon: Icon(Icons.more_vert), onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,)),
          ],
        ),
        body: Container(
          decoration: new BoxDecoration(
            color: Color(webColor('#0D39E9'))
          ),
          child: Timetable<BasicEvent>(
            controller: _controller,
            eventBuilder: (event) {
              return BasicEventWidget(
                event,
                onTap: () =>  _showSnackBar('Part-day even $event tapped'),
              );
            },
            allDayEventBuilder: (context, event, info)  =>  BasicAllDayEventWidget(
              event, 
              info: info,
              onTap: () => _showSnackBar('All-day event'),
            ),
          )
        ),
      ),
      
    );
  }

  void _showSnackBar(String content){
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(content),
      ));
  }
}