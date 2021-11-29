import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/input_box.dart';
import 'package:head_office_app/services/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Sub_For_Approv extends StatefulWidget {
  @override
  _Sub_For_ApprovState createState() => _Sub_For_ApprovState();
}

class _Sub_For_ApprovState extends State<Sub_For_Approv> {
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
              Column(
                children: [
                  InputBox(text: 'Search by Reference Number', isObs: false),
                  SizedBox(height: 80.h,),
                  Container(
                    padding: EdgeInsets.fromLTRB(70.w, 0, 0, 0),
                    width: 500.w,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Reference Number', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                            Text('Status', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('XXXXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                            SizedBox( height: 25.h, width: 150.w,
                              child: FlatButton(
                                onPressed: (){Navigator.pushNamed(context, '/approve_summary');},
                                child: Text('Approved', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
                                color: const Color.fromARGB(255, 11, 126, 193),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('XXXXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                            SizedBox( height: 25.h, width: 150.w,
                              child: FlatButton(
                                onPressed: (){Navigator.pushNamed(context, '/rejected');},
                                child: Text('Rejected', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
                                color: const Color.fromARGB(255, 241, 34, 34),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('XXXXX', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                            SizedBox( height: 25.h, width: 150.w,
                              child: FlatButton(
                                onPressed: (){},
                                child: Text('Pending', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
                                color: const Color.fromARGB(255, 241, 146, 34),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50.w, 0),
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
              onPressed: (){Navigator.popAndPushNamed(context, '/staff_details');},
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
