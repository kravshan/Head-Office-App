import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(298.w, 0.h, 361.w, 0.h),
            child: Center(
              child: SizedBox(
                height: 545.h,
                width: 621.w,
                child: Image(
                  image: AssetImage('assets/car.jpg'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 41.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150.w,
                height: 50.h,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign_in', (route) => false);
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  color: Color.fromRGBO(11, 126, 193, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48.r)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}