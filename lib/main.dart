import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/pages/login.dart';
import 'package:head_office_app/pages/sign_in.dart';
import 'package:head_office_app/pages/home_screen.dart';
import 'package:head_office_app/pages/branch_details.dart';
import 'package:head_office_app/pages/user_database.dart';
import 'package:head_office_app/pages/agent_database.dart';
import 'package:head_office_app/pages/specific_branch_details.dart';
import 'package:head_office_app/pages/staff_details.dart';
import 'package:head_office_app/pages/submitted_for_approv.dart';

void main() => runApp(ScreenUtilInit(
    designSize: const Size(1280, 720),
    builder: () => MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/sign_in': (context) => Sign_in(),
        '/home_screen': (context) => Home_screen(),
        '/branch_details': (context) => BranchDetails(),
        '/user_database': (context) => UserDatabase(),
        '/agent_database': (context) => AgentDatabase(),
        '/specific_branch_details': (context) => Specific_Branch_Details(),
        '/staff_details': (context) => Staff_Details(),
        '/submit_for_approv': (context) => Sub_For_Approv(),
      },
    )
  )
);

