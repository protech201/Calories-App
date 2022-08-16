import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class InfoCustom extends StatelessWidget {
  final String title;
  final String info;
  InfoCustom({required this.title,required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 325.w,
      alignment: Alignment.center,
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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text(this.title,
              style: TextStyle(fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6A7CD8)),),
            Spacer(),
            Text(this.info,
              style: TextStyle(fontSize: 25.sp,color: Color(0xff8F3CC3)),)
          ],
        ),
      ),

    );
  }
}
