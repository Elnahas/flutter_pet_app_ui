import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/font_weight_helper.dart';

abstract class AppTextStyles {
  

   
  static TextStyle font15NormalBlack = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
    fontFamily: "Poppins",
  );

    static TextStyle font15NormalRed = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.red,
    fontFamily: "Poppins",
  );


  static TextStyle font18BoldBlack = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font14BoldBlack = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font12BoldBlack = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );


  static TextStyle font18BoldWhite = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

    static TextStyle font14BoldWhite = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font22BoldWhite = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font20SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font16SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  
}
