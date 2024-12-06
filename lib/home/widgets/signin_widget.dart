import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
AppBar buildAppBar(String title){
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        height: 1,
        color: Colors.grey.withOpacity(.5),
      ),
    ),
title: Center(
  child: Text(
    title,
    style: TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.normal
    ),

  ),
),
  );
}
Widget socialIcon(){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 80.w),
  child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      iconWidget("google"),
      iconWidget("apple"),
      iconWidget("facebook")

    ],
  ) ,
  );
}
Widget iconWidget(String iconName){
  return SizedBox(
    height: 40.h,
    width: 40.w,
    child: Image.asset("assets/icons/$iconName.png"),
  );
}
Widget signInBottom(String text ,bool isWhite){
  return Container(
    padding:EdgeInsets.symmetric(vertical: 12.h),
    width: 345.w,
    decoration: BoxDecoration(
      color:isWhite?Colors.white: Colors.blue,
      borderRadius: BorderRadius.circular(16.r),
      border:isWhite? Border.all(color: Colors.grey,width: 1.w):null
    ),
    child: Center(
      child: Text(
          text,
        style: TextStyle(
          fontSize: 16.sp,
          color:isWhite?Colors.black: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
  
}