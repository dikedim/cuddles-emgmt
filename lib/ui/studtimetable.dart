import 'dart:math';

import 'package:flutter/material.dart';
import 'package:emgmt_cuddles/models/helper.dart';
//import 'package:flutter/services.dart';
import 'package:time_machine/time_machine.dart';
import 'package:timetable/timetable.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';

//import 'positioning_demo.dart';
// import 'utils.dart';

class ClassSchedule extends StatefulWidget {
  @override
  _ClassScheduleState createState() => _ClassScheduleState();
}

final EventProvider<BasicEvent> classScheduleProvider = EventProvider.list(_events);
final _events = <BasicEvent>[
  _ClassEvent(0, 0, LocalTime(10, 0, 0), LocalTime(15, 0, 0)),
  _ClassEvent(0, 1, LocalTime(08, 0, 0), LocalTime(10, 0, 0)),
];

class _ClassEvent extends BasicEvent{
  _ClassEvent(
    int classId,
    int eventId,
    LocalTime start,
    LocalTime end, {
      int endDateOffset = 0,
    })  : super(
      id: '$classId-$eventId',
      title: 'a-$classId-$eventId',
      color: _getColor('$classId-$eventId'),
      start: LocalDate.today().addDays(classId).at(start),
      end: LocalDate.today().addDays(classId + endDateOffset).at(end),
    );
    _ClassEvent.allDay(int id, int startOffset, int length)
      : super(
        id: 'a-$id',
        title: 'a-$id',
        color: _getColor('a-$id'),
        start: LocalDate.today().addDays(startOffset).atMidnight(),
        end: LocalDate.today().addDays(startOffset + length).atMidnight(),
      );
    
  static Color _getColor(String id){
    return Random(id.hashCode)
      .nextColorHsv(
        saturation: 0.7,
        value: 0.8,
        alpha: 1,
      )
      .toColor();
  }
}
class _ClassScheduleState extends State<ClassSchedule> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TimetableController<BasicEvent> _controller;

  @override
  void initState(){
    super.initState();

    _controller = TimetableController(
      eventProvider: classScheduleProvider,
      //eventProvider: positioningDemoEventProvider, 
      initialTimeRange: InitialTimeRange.range(
        startTime: LocalTime(8, 0, 0),
        endTime: LocalTime(17, 0, 0),
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
          backgroundColor: Color(webColor('#0D39E9')),
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
            //color: Color(webColor('#0D39E9'))
            color: Colors.white
          ),
          child: Timetable<BasicEvent>(
            controller: _controller,
            onEventBackgroundTap: (start, isAllDay){
              _showSnackBar('Background tapped $start is all day even $isAllDay');
            },
            eventBuilder: (event) {
              return BasicEventWidget(
                event,
                onTap: () =>  _showSnackBar('Part-day even $event tapped'),
              );
            },
            allDayEventBuilder: (context, event, info)  =>  BasicAllDayEventWidget(
              event, 
              info: info,
              onTap: () => _showSnackBar('All-day event $event tapped'),
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