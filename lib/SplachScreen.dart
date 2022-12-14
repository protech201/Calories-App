
// import 'package:google_fonts_arabic/fonts.dart';
// import 'package:google_fonts_arabic/fonts.dart';

import 'package:calories/AppRouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'HomePage.dart';
import 'InPutUi.dart';
import 'colorText.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void delay() {
    Future.delayed(Duration(milliseconds: 1500), () {
      AppRouter.NavigatorToWidgetWithReplacement(HomePage());

    });
  }
  @override
  void initState() {
    delay();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/calcilator.svg",
                width: MediaQuery.of(context).size.width/3.2,),

              SizedBox(height: 20,),


              const Center(
                child: GradientText(
                  'POWER GYM',
                  style: TextStyle(fontSize: 40),
                  gradient: LinearGradient(colors: [
                    Color(0xff8F3CC3),
                    Color(0xff6A7CD8),
                  ]),
                ),
              ),

            ],
          ),
        ),
      ) ,
    );
  }
}
