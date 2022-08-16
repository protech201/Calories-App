import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../colorText.dart';

class Result_Custom extends StatelessWidget {
  // const Result_Custom({Key? key}) : super(key: key);
  final String title;
  Widget? kg_week;
  final String result;
  final String proportion;
  // var width;
  // var height;

  Result_Custom({required this.title,
    required this.result,
    required this.proportion,
    this.kg_week});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).orientation == Orientation.portrait?
              MediaQuery.of(context).size.width/3
              :80.w,

      height: MediaQuery.of(context).orientation == Orientation.portrait?
              MediaQuery.of(context).size.height/4.5
              :270.h,
      padding: EdgeInsets.only(left: 8),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
           Text(this.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 25
            ),),

          SizedBox(child: this.kg_week),

          GradientText(
            this.result,
            style: const TextStyle(fontSize: 35),
            gradient: const LinearGradient(colors: [
              Color(0xff8F3CC3),
              Color(0xff6A7CD8),
            ]),
          ),
           Text(this.proportion,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 25
            ),),
          const Text("Calories/Day",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 25
            ),),




        ],),

    );
  }
}
