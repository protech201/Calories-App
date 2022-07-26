import 'package:calories/InPutUi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Center(
                child: SvgPicture.asset("assets/images/calcilator2.svg",
                width: MediaQuery.of(context).size.width/2,),
              ),
              SizedBox(height: 20,),
              GradientText(
                "Calories / Day",
                style: TextStyle(fontSize: 45),
                gradient: LinearGradient(colors: [
                  Color(0xffAEBAF8),
                  Color(0xffC973FF),
                ]),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.height/4.5,
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffF5F5F7),
                      // gradient: LinearGradient(colors: [
                      //     Color(0xffC973FF),
                      //     Color(0xffAEBAF8),
                      //   ]),
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
                      Text("MAINTAIN WEIGHT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffC0CAD7),
                            fontSize: 25
                        ),),

                      GradientText(
                        (result.toInt()).toString(),
                        style: TextStyle(fontSize: 35),
                        gradient: LinearGradient(colors: [
                          Color(0xffAEBAF8),
                          Color(0xffC973FF),
                        ]),
                      ),
                      Text("100 %",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffC0CAD7),
                            fontSize: 25
                        ),),
                      Text("Calories/Day",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffC0CAD7),
                            fontSize: 25
                        ),),




                    ],),

                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.height/4.5,
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffF5F5F7),
                      // gradient: LinearGradient(colors: [
                      //     Color(0xffC973FF),
                      //     Color(0xffAEBAF8),
                      //   ]),
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
                      Text("MILD WEIGHT LOSS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffC0CAD7),
                            fontSize: 24
                        ),),
                        Text("0.25 KG/WEEK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 15
                          ),),
                      GradientText(
                        ((result*0.9).toInt()).toString(),
                        style: TextStyle(fontSize: 35),
                        gradient: LinearGradient(colors: [
                          Color(0xffAEBAF8),
                          Color(0xffC973FF),
                        ]),
                      ),
                      Text("90 %",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffC0CAD7),
                            fontSize: 22
                        ),),
                      Text("Calories/Day",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffC0CAD7),
                            fontSize: 18
                        ),),




                    ],),

                  ),

                ],
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.height/4.5,
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffF5F5F7),
                      // gradient: LinearGradient(colors: [
                      //     Color(0xffC973FF),
                      //     Color(0xffAEBAF8),
                      //   ]),
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
                        Text("WEIGHT LOSS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 24
                          ),),
                        Text("0.5 KG/WEEK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 15
                          ),),
                        GradientText(
                          ((result*0.79).toInt()).toString(),
                          style: TextStyle(fontSize: 35),
                          gradient: LinearGradient(colors: [
                            Color(0xffAEBAF8),
                            Color(0xffC973FF),
                          ]),
                        ),
                        Text("79 %",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 22
                          ),),
                        Text("Calories/Day",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 18
                          ),),




                      ],),

                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.height/4.5,
                    padding: EdgeInsets.only(left: 8),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffF5F5F7),
                      // gradient: LinearGradient(colors: [
                      //     Color(0xffC973FF),
                      //     Color(0xffAEBAF8),
                      //   ]),
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
                        Text("EXTREME WEIGHT LOSS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 24
                          ),),
                        Text("1 KG/WEEK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 15
                          ),),
                        GradientText(
                          ((result*0.58).toInt()).toString(),
                          style: TextStyle(fontSize: 35),
                          gradient: LinearGradient(colors: [
                            Color(0xffAEBAF8),
                            Color(0xffC973FF),
                          ]),
                        ),
                        Text("58 %",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 22
                          ),),
                        Text("Calories/Day",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffC0CAD7),
                              fontSize: 18
                          ),),




                      ],),

                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
