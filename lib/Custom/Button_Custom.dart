import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Button_Custom extends StatelessWidget {
  // const Button_Custom({Key? key}) : super(key: key);
  final String title;
  final Function function;
  Button_Custom({required this.title,required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>function(),
      child: Container(
        alignment: Alignment.center,
        width: 325.w,
        height: 55.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(colors: [
            Color(0xff8F3CC3),
            Color(0xff6A7CD8),

          ]),
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
        child: Text(this.title,style: TextStyle(
            fontSize: 30.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
