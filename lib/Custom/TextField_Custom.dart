import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class TextField_Custom extends StatelessWidget {
  // const TextField_Custom({Key? key}) : super(key: key);
  TextEditingController controller;
  final String hintText;
  Widget? suffix;
  TextField_Custom({required this.controller,required this.hintText,this.suffix});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      padding: EdgeInsets.only(left: 8,right: 8),
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xffF5F5F7),
        boxShadow: [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(-2, -2),
            blurRadius: 2,
          ),
          BoxShadow(
            color: Color(0xffffffff),
            offset: Offset(2, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child:  TextField(
        controller: this.controller,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 25.sp,color: Color(0xff8F3CC3),), //#AEBAF8
        decoration: InputDecoration(
          suffix: suffix,
          border: InputBorder.none,
          hintText: this.hintText,
          hintStyle: TextStyle(fontSize: 25.sp,color: Colors.grey),
        ),
      ),
    );
  }
}
