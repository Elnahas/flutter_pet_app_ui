import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  


  static  TextStyle font15Grey = TextStyle(
    fontSize: 15.sp,
    color: Colors.grey,
    fontFamily: "Poppins",
  );

  static  TextStyle font20BoldWhite = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static  TextStyle font35BoldBlack = TextStyle(
    fontSize: 35.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: "Poppins",
    height: 1.2,
  );



  
}
