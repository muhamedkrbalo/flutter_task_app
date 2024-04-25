import 'package:flutter/material.dart';
import 'package:flutter_task_app/helpers/theme/app_colors.dart';





class AppTextStyle {
  AppTextStyle(TextStyle textD14R);

  static TextStyle appBarStyle(BuildContext context, {bool listen = true}) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor
    );
  }

  static TextStyle buttonStyle(BuildContext context, {bool listen = true}) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppColor.whiteColor
    );
  }

 

  static TextStyle textFormStyle(BuildContext context, {bool listen = true}) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor
    );
  }

  static TextStyle formTitleStyle(BuildContext context, {bool listen = true}) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColor.whiteColor
    );
  }

  static TextStyle textD18M(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
      color: color ?? AppColor.darkColor
    );
  } 
  static TextStyle textW16M(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
      color: color ?? AppColor.whiteColor
    );
  }
  static TextStyle textG9c16M(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
      color: color ?? AppColor.grey9cColor
    );
  }
  static TextStyle textG9c12R(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: color ?? AppColor.grey9cColor
    );
  }
   static TextStyle textW12B(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: color ?? AppColor.whiteColor
    );
  }
   static TextStyle textW12R(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: color ?? AppColor.whiteColor
    );
  }
  static TextStyle textD16R(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: color ?? AppColor.darkColor
    );
  }
   static TextStyle textD10B(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: color ?? AppColor.darkColor
    );
  }
   static TextStyle textD10R(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: color ?? AppColor.darkColor
    );
  }
     static TextStyle textL14R(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: color ?? AppColor.lightColor
    );
  }
   static TextStyle textD23B(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: color ?? AppColor.darkColor
    );
  }
    
  static TextStyle textP12B(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: color ?? AppColor.purpleColor
    );
  }
  static TextStyle textP10R(BuildContext context, { Color? color}) {
    return TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: color ?? AppColor.purpleColor
    );
  }

   static TextStyle hintStyle(BuildContext context,) {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color:  AppColor.hintColor,
      fontFamily: 'Inter',
    );
  }

 
}
