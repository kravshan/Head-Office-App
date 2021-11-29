import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/input_box.dart';
import 'package:head_office_app/services/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class UserDatabase extends StatefulWidget {
  @override
  _UserDatabaseState createState() => _UserDatabaseState();
}

class _UserDatabaseState extends State<UserDatabase> {
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
              Text('User Database', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 48.sp, color: Colors.black,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(115.w, 40.h, 0, 0),
                    child: Column(
                      children: [
                        InputBox(text: 'Select User by Policy Number', isObs: false),
                        SizedBox(height: 16.h,),
                        SizedBox(
                          height: 50.h,
                          width: 150.w,
                          child: FlatButton(
                            onPressed: (){Navigator.popAndPushNamed(context, '/specific_branch_details');},
                            child: Text('Search', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp),),
                            color: const Color.fromARGB(255, 160, 213, 244),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 115.w, 0),
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
              SizedBox(
                height: 50.h,
                width: 150.w,
                child: FlatButton(
                  onPressed: (){Navigator.pop(context);},
                  child: Text('BACK', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp),),
                  color: const Color.fromARGB(255, 160, 213, 244),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                ),
              )
            ]
        )
    );
  }
}