import 'package:calories/AppRouter.dart';
import 'package:calories/DB/db_helper.dart';
import 'package:calories/InPutUi.dart';
import 'package:calories/Players.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'Custom/Button_Custom.dart';
import 'DB/playerModel.dart';
import 'colorText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static late List<PlayerModel> players;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  getAllPlayers()async{
    HomePage.players = await DbHelper.dbHelper.selectAllTask();
     setState(() {

     });
  }
  ButtonCounter(){
    AppRouter.NavigatorToWidget(InPutUi());
  }

  ButtonPlayers(){
    AppRouter.NavigatorToWidget(Players());
  }
  @override
  void initState() {
    getAllPlayers();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait?
            Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/1,
          height: MediaQuery.of(context).size.height/1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              //Logo
              SvgPicture.asset("assets/images/calcilator.svg",
                width: 130.w,),
               GradientText(
                'POWER GYM',
                style: TextStyle(fontSize: 40.sp),
                gradient: const LinearGradient(colors: [
                  Color(0xff8F3CC3),
                  Color(0xff6A7CD8),
                ]),
              ),
              SizedBox(height: 100.h,),
              //Button Calories Counter
              Button_Custom(
                title: 'Calories Counter',
                function: ButtonCounter,),
              SizedBox(height: 20.h,),
              //Button Players
              Button_Custom(
                title: 'Players',
                function: ButtonPlayers,),
            ],
          ),
        ),
      ),
    )
            :Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/1,
          height: MediaQuery.of(context).size.height/1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Logo
                  SvgPicture.asset("assets/images/calcilator.svg",
                    width: 60.w,),
                  GradientText(
                    'POWER GYM',
                    style: TextStyle(fontSize: 50.sp),
                    gradient: const LinearGradient(colors: [
                      Color(0xff8F3CC3),
                      Color(0xff6A7CD8),
                    ]),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Button Calories Counter
                  SizedBox(
                    width: 120.w,
                    child: Button_Custom(
                      title: 'Calories Counter',
                      function: ButtonCounter,),
                  ),
                  SizedBox(height: 20.h,),
                  //Button Players
                  SizedBox(
                    width: 120.w,
                    child: Button_Custom(
                      title: 'Players',
                      function: ButtonPlayers,),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
