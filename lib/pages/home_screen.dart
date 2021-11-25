import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Home_screen extends StatefulWidget {

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Navi_bar(),
          Text('Home', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 48.sp, color: Colors.black,)),
          SizedBox(height: 100.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(115.w, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, '/branch_details');},
                      child: Text('Branch Details', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black),),
                    ),
                    SizedBox(height: 58.h,),
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, '/user_database');},
                      child: Text('User Database', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black),),
                    ),
                    SizedBox(height: 58.h,),
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, '/agent_database');},
                      child: Text('Agent Database', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 115.w, 0),
                child: Column(
                  children: [
                    SizedBox(height: 40.h,),
                    Text('Calender', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 18.sp, color: Color.fromRGBO(0, 0, 0, 1),),),
                    Container(
                      height: 300.h,
                      width: 250.w,
                      //color: const Color.fromRGBO(229, 245, 246, 1),
                      child: SfCalendar(view: CalendarView.month,),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}