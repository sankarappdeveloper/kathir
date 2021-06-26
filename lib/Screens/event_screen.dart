import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:todolistapp/CalendarApp.dart';

class EventScreen extends StatefulWidget {
  // const EventScreen({Key? key}) : super(key: key);
//  CalendarController _calendarController = new CalendarController();
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Today's Event",
          style: TextStyle(
              // color: Colors.pinkAccent,
              ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            // TableCalendar(
            //   initialCalendarFormat: CalendarFormat.month,
            //     calendarStyle: CalendarStyle(
            //         todayColor: Colors.blue,
            //         selectedColor: Theme.of(context).primaryColor,
            //         todayStyle: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 22.0,
            //             color: Colors.white)
            //     ),
            //     // calendarController: _calendarController,
            //     ),
            Container(
              // height: 380,
              decoration: BoxDecoration(
                // color: Colors.white,

                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white,
                    Colors.white,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), //color of shadow
                    spreadRadius: 2, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 3), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: SafeArea(
                child: Expanded(
                  child: TableCalendar(
                    // lastDay: ,
                    initialCalendarFormat: CalendarFormat.week,
                    calendarStyle: CalendarStyle(
                        todayColor: Colors.blue,
                        selectedColor: Theme.of(context).primaryColor,
                        todayStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Colors.white)),
                    headerStyle: HeaderStyle(
                      centerHeaderTitle: true,
                      formatButtonDecoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      formatButtonTextStyle: TextStyle(color: Colors.white),
                      formatButtonShowsNext: false,
                    ),
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    // onDaySelected: (date, events) {
                    //   print(date.toUtc());
                    // },
                    builders: CalendarBuilders(
                      selectedDayBuilder: (context, date, events) => Container(
                          margin: const EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Text(
                            date.day.toString(),
                            style: TextStyle(color: Colors.white),
                          )),
                      todayDayBuilder: (context, date, events) => Container(
                          margin: const EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Text(
                            date.day.toString(),
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    calendarController: _controller,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                // color: Colors.blue[50],

                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      // Colors.pink[50],
                      Colors.white,
                      Colors.white,
                    ],
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              // color: Colors.red[50],
                              // radius: 30,

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://static.vecteezy.com/system/resources/previews/000/292/226/original/business-calendar-vector-icon.jpg',
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                            ),

                            // Icons.account_balance_wallet_rounded,
                            // size: 50,

                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Collage Quize Event',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        // color: Colors.blue[900],
                                        color: Colors.black,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 150,
                                    child: Text('This event description here',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey[500],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.av_timer_outlined,
                              size: 30,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Ends Jul 31,2021',
                                style: TextStyle(
                                  fontSize: 13,
                                  // fontWeight: FontWeight.w700,
                                  color: Colors.red,
                                )),
                            Spacer(),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  elevation: 6,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 1),
                                  backgroundColor: Colors.pinkAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                'View',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
