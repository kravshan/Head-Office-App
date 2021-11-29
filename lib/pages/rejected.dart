import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/input_box.dart';
import 'package:head_office_app/services/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Rejected extends StatefulWidget {

  @override
  _RejectedState createState() => _RejectedState();
}

class _RejectedState extends State<Rejected> {
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
          Text('Submitted For Approval', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 48.sp, color: Colors.black,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(115.w, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rejected Case XXXXX details', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                    SizedBox(height: 200.h,),
                    SizedBox( height: 50.h, width: 150.w,
                      child: FlatButton(
                        onPressed: (){Navigator.pop(context);},
                        child: Text('Next', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
                        color: const Color.fromARGB(255, 11, 126, 193),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 20.h,),
                  Text('Summary', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Text('XXXXXXXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  SizedBox(height: 5.h,),
                  Text('XXXXXXXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  SizedBox(height: 5.h,),
                  Text('XXXXXXXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  SizedBox(height: 105.h,),

                ],
              ),
              SizedBox(width: 50.w,),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 60.w, 0),
                child: Column(
                  children: [
                    SizedBox(height: 120.h,),
                    Text('Calender', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 18.sp, color: Color.fromRGBO(0, 0, 0, 1),),),
                    Container(
                      height: 300.h,
                      width: 250.w,
                      child: SfCalendar(view: CalendarView.month,),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox( height: 50.h, width: 150.w,
            child: FlatButton(
              onPressed: (){Navigator.pop(context);},
              child: Text('BACK', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
            ),
          ),
        ],
      ),
    );
  }
}