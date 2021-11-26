import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Specific_Branch_Details extends StatefulWidget {
  @override
  _Specific_Branch_DetailsState createState() => _Specific_Branch_DetailsState();
}

class _Specific_Branch_DetailsState extends State<Specific_Branch_Details> {
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
          Text('Branch Details', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 48.sp, color: Colors.black,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('XXXX Branch', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                  SizedBox(height: 20.h,),
                  Text('Branch Manager', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                  SizedBox(height: 25.h,),
                  Container(
                    color: const Color.fromARGB(255, 229, 245, 246),
                    height: 100.h,
                    width: 100.w,
                  ),
                  SizedBox(height: 10.h,),
                  Text('Name - XXXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                  Text('Contact Details - XXXXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                  SizedBox(height: 70.h),
                  TextButton(
                    onPressed: () {Navigator.popAndPushNamed(context, '/staff_details');},
                    child: Text('Staff Details', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black),),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50.h,
                    width: 150.w,
                    child: FlatButton(
                      onPressed: (){Navigator.pushNamed(context, '/submit_for_approv');},
                      child: Text('Submitted for Approval', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
                      color: const Color.fromARGB(255, 11, 126, 193),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                    ),
                  ),
                  SizedBox(height: 75.h,),
                  Text('Address', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  Text('XXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  Text('XXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  SizedBox(height: 20.h,),
                  Text('Contact Details', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  Text('XXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  Text('XXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                  SizedBox(height: 75.h,)
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 120.h,),
                  Text('Calender', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.w400, fontSize: 18.sp, color: Color.fromRGBO(0, 0, 0, 1),),),
                  Container(
                    height: 300.h,
                    width: 250.w,
                    child: SfCalendar(view: CalendarView.month,),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 50.h,
            width: 150.w,
            child: FlatButton(
              onPressed: (){Navigator.pop(context);},
              child: Text('BACK', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
            ),
          )
        ],
      ),
    );
  }
}
