import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Staff_Details extends StatefulWidget {
  @override
  _Staff_DetailsState createState() => _Staff_DetailsState();
}

class _Staff_DetailsState extends State<Staff_Details> {
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
                  Text('Staff Details', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 100.h, width: 100.w, color: Color.fromARGB(255, 229, 245, 246),),
                          SizedBox(height: 15.h,),
                          Text('Designation - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Name - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Contact Details - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 100.h, width: 100.w, color: Color.fromARGB(255, 229, 245, 246),),
                          SizedBox(height: 15.h,),
                          Text('Designation - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Name - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Contact Details - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 100.h, width: 100.w, color: Color.fromARGB(255, 229, 245, 246),),
                          SizedBox(height: 15.h,),
                          Text('Designation - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Name - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Contact Details - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 100.h, width: 100.w, color: Color.fromARGB(255, 229, 245, 246),),
                          SizedBox(height: 15.h,),
                          Text('Designation - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Name - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Contact Details - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 100.h, width: 100.w, color: Color.fromARGB(255, 229, 245, 246),),
                          SizedBox(height: 15.h,),
                          Text('Designation - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Name - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Contact Details - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 100.h, width: 100.w, color: Color.fromARGB(255, 229, 245, 246),),
                          SizedBox(height: 15.h,),
                          Text('Designation - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Name - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          Text('Contact Details - XXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                        ],
                      )
                    ],
                  )
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
          SizedBox(height: 18.h,),
          SizedBox(
            height: 50.h,
            width: 150.w,
            child: FlatButton(
              onPressed: (){Navigator.pushNamedAndRemoveUntil(context, '/home_screen', (route) => false);},
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
