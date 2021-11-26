import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:head_office_app/services/navi_bar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class BranchDetails extends StatefulWidget {
  @override
  _BranchDetailsState createState() => _BranchDetailsState();
}

class _BranchDetailsState extends State<BranchDetails> {

  String binValue = 'Colombo';
  String districtVal = 'Malabe';
  List<String> subDistrict = [];

  String colombo_1 = 'Malabe';
  String kurunegala_1 = 'Thorayaya';
  String kandy_1 = 'Katugasthota';
  String gampaha_1 = 'Kadawatha';
  String kaluthara_1 = 'Panadura';
  String puttalm_1 = 'Kalpitiya';
  String nuwara_eliya_1 = 'Ambewela';
  String matale_1 = 'Sigiriya';

  List<String> subColombo = ['Malabe', 'Pannipitiya', 'Kottawa', 'Maharagama', 'Nugegoda', 'Pettah'];
  List<String> subKurunegala = ['Thorayaya', 'Maspotha', 'Wariyapola', 'Polgahawela', 'Mawathagama'];
  List<String> subKandy = ['Katugasthota', 'Panideniya', 'Gatabe', 'Digana', 'Kadugannawa', 'Galagedara'];
  List<String> subGampaha = ['Kadawatha', 'Wattala', 'Kiribathgoda', 'Ja-Ela', 'Miriswatta'];
  List<String> subKaluthara = ['Panadura', 'Bandarawatta', 'Horana', 'Matugama'];
  List<String> subPuttalam = ['Kalpitiya', 'Anamaduwa', 'Wennappuwa'];
  List<String> subNuwaraEliya = ['Ambewela', 'Ohiya', 'Pattipola', 'Hatton'];
  List<String> subMatale = ['Sigiriya', 'Nalanda'];

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(115.w, 0, 0, 0),
                child: Column(
                  children: [
                    Text('Select District', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                    DropdownButton(
                      value: binValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24.sp,
                      elevation: 16,
                      underline: Container(
                        height: 2.h,
                        color: Colors.grey[700],
                      ),
                      onChanged: (String? newValue){
                        setState(() {
                          binValue = newValue!;
                          if (binValue == 'Colombo'){
                            subDistrict = subColombo;
                            districtVal = colombo_1;
                          }else if(binValue == 'Kurunegala'){
                            subDistrict = subKurunegala;
                            districtVal = kurunegala_1;
                          }else if(binValue == 'Kandy'){
                            subDistrict = subKandy;
                            districtVal = kandy_1;
                          }else if(binValue == 'Gampaha'){
                            subDistrict = subGampaha;
                            districtVal = gampaha_1;
                          }else if(binValue == 'Kaluthara'){
                            subDistrict = subKaluthara;
                            districtVal = kaluthara_1;
                          }else if(binValue == 'Puttalam'){
                            subDistrict = subPuttalam;
                            districtVal = puttalm_1;
                          }else if(binValue == 'Nuwara-Eliya'){
                            subDistrict = subNuwaraEliya;
                            districtVal = nuwara_eliya_1;
                          }else if(binValue == 'Matale'){
                            subDistrict = subMatale;
                            districtVal = matale_1;
                          }
                        });
                      },
                      items: ['Colombo', 'Kurunegala', 'Kandy',
                        'Gampaha', 'Kaluthara', 'Puttalam', 'Nuwara-Eliya',
                        'Matale'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                      }).toList(),
                      onTap: (){},
                    ),
                    SizedBox(height: 75.w,),
                    Text('Select Branch', style: TextStyle(fontSize: 18.sp, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),),
                    DropdownButton(
                      value: districtVal,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24.sp,
                      elevation: 16,
                      underline: Container(
                        height: 2.h,
                        color: Colors.grey[700],
                      ),
                      onChanged: (String? newValue){
                        setState(() {
                          districtVal = newValue!;
                        });
                      },
                      items: subDistrict.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onTap: (){},
                    ),
                    SizedBox(height: 10.h,),
                    SizedBox(
                      height: 25.h,
                      width: 50.w,
                      child: FlatButton(
                        onPressed: (){Navigator.popAndPushNamed(context, '/specific_branch_details');},
                        child: Text('GO', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp),),
                        color: const Color.fromARGB(255, 160, 213, 244),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
                      ),
                    ),
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
              child: Text('BACK', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white),),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
            ),
          )
      ]
    )
    );
  }
}
