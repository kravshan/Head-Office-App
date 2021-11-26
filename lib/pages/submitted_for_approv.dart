import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/input_box.dart';
import 'package:head_office_app/services/navi_bar.dart';

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
            children: [
              Column(
                children: [
                  InputBox(text: 'Search By Reference Number', isObs: false),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 80.h,),
                          Text('Reference Number', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          SizedBox(height: 5.h,),
                          Text('XXXXXXXXXXXXXXXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),),
                          SizedBox(height: 5.h,),
                          Text('XXXXXXXXXXXXXXXX', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Comfortaa', fontSize: 18.sp),)
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
