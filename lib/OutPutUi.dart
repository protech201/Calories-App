import 'package:calories/Custom/Result_Custom.dart';
import 'package:calories/InPutUi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colorText.dart';

class OutPutUi extends StatefulWidget {

  const OutPutUi({Key? key}) : super(key: key);

  @override
  _OutPutUiState createState() => _OutPutUiState();
}
class _OutPutUiState extends State<OutPutUi> {
  double result = InPutUi.result;
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait?
      Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Center(
                child: SvgPicture.asset("assets/images/calcilator.svg",
                width: MediaQuery.of(context).size.width/2,),
              ),
              SizedBox(height: 20.h,),
              GradientText(
                "Calories / Day",
                style: TextStyle(fontSize: 45),
                gradient: LinearGradient(colors: [
                  Color(0xff8F3CC3),
                  Color(0xff6A7CD8),
                ]),
              ),

              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Result_Custom(
                    title: "MAINTAIN WEIGHT",
                    result: (result.toInt()).toString(),
                    proportion: "100 %",),
                  Result_Custom(
                    title: "MILD WEIGHT LOSS",
                    result: ((result*0.9).toInt()).toString(),
                    kg_week: const Text("0.5 KG/WEEK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                    proportion: "90 %",),
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Result_Custom(
                    title: "WEIGHT LOSS",
                    result: ((result*0.79).toInt()).toString(),
                    kg_week: const Text("0.5 KG/WEEK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                    proportion: "79 %",),
                  Result_Custom(
                    title: "EXTREME WEIGHT LOSS",
                    result: ((result*0.58).toInt()).toString(),
                    kg_week: const Text("1 KG/WEEK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                    proportion: "58 %",),

                ],
              ),



            ],
          ),
        ),
      ),
    )
      :Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/1,
          height: MediaQuery.of(context).size.height/1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GradientText(
                'Calories / Day',
                style: TextStyle(fontSize: 50.sp),
                gradient: const LinearGradient(colors: [
                  Color(0xff8F3CC3),
                  Color(0xff6A7CD8),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Result_Custom(
                    title: "MAINTAIN WEIGHT",
                    result: (result.toInt()).toString(),
                    proportion: "100 %",),
                  Result_Custom(
                    title: "MILD WEIGHT LOSS",
                    result: ((result*0.9).toInt()).toString(),
                    kg_week: const Text("0.25 KG/WEEK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                    proportion: "90 %",),

                  Result_Custom(
                    title: "WEIGHT LOSS",
                    result: ((result*0.79).toInt()).toString(),
                    kg_week: const Text("0.5 KG/WEEK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                    proportion: "79 %",),
                  Result_Custom(
                    title: "EXTREME WEIGHT LOSS",
                    result: ((result*0.58).toInt()).toString(),
                    kg_week: const Text("1 KG/WEEK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                    proportion: "58 %",)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Text("0.25 KG/WEEK",
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Color(0xffC0CAD7),
// fontSize: 15
// ),),
