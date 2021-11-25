import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/input_box.dart';

class Sign_in extends StatefulWidget {
  @override
  _Sign_inState createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120.h,
            ),
            Container(
              height: 350.h,
              width: 500.w,
              color: const Color.fromARGB(255, 229, 245, 246),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputBox(text: 'User name', isObs: false),
                  SizedBox(
                    height: 44.h,
                  ),
                  InputBox(text: 'Password', isObs: true),
                ],
              ),
            ),
            SizedBox(height: 63.h,),
            SizedBox(
              width: 150.w,
              height: 50.h,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home_screen', (route) => false);
                },
                child: Text('Sign in', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 14.sp, color: Colors.white),),
                color: const Color.fromRGBO(11, 126, 193, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48.r)),
              ),
            )
          ],
        ),
      ),
    );
  }
}