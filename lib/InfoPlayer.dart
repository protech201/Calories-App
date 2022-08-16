import 'package:calories/Custom/Info_Custom.dart';
import 'package:calories/DB/playerModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'Custom/Button_Custom.dart';
import 'DB/Db_provider.dart';

class InfoPlayer extends StatefulWidget {
  PlayerModel player;
  InfoPlayer(this.player);
  // const InfoPlayer({Key? key}) : super(key: key);

  @override
  _InfoPlayerState createState() => _InfoPlayerState();
}

class _InfoPlayerState extends State<InfoPlayer> {
  GlobalKey<FormState> InPutKey = GlobalKey();
  String? weightVaidator (String x){
    if(x.isEmpty)
      return 'Weight is empty';
  }
  String? cal_dayVaidator (String x){
    if(x.isEmpty)
      return 'Calories / Day is empty';
  }

  ButtonProgress(){

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Progress',style: TextStyle(fontSize: 25.sp,color: Color(0xff8F3CC3)),),
            content: SingleChildScrollView(
              child: Form(
                key: InPutKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          // valueText = value;
                        });
                      },
                      // controller: _textFieldController,
                      keyboardType: TextInputType.number,
                      validator: (x)=>weightVaidator(x!),
                      style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Weight",
                          labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          // valueText = value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      validator: (x)=>cal_dayVaidator(x!),
                      // controller: _textFieldController,
                      style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Calories / Day",
                          labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    // codeDialog = valueText;
                    if(InPutKey.currentState!.validate())
                      if(InPutKey.currentState!.validate()){
                        Navigator.pop(context);
                        var snackBar = SnackBar(content: Text('Done successfully'),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 1),);
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                  });
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //--Info Player
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                // width: MediaQuery.of(context).size.width/1,
                height: 250.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                  gradient: LinearGradient(colors: [
                    Color(0xff6A7CD8),
                    Color(0xff8F3CC3),
                  ]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //back
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width/1,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 25.sp,),
                          ),
                        )),
                    const Spacer(),
                    //Info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/calcilator3.svg",
                          width: MediaQuery.of(context).size.width/3.5,),
                        SizedBox(width: 10.w,),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text((widget.player.name!),
                              style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.normal,color: Colors.white),),
                            Text(widget.player.address!,
                              style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.normal,color: Colors.white),),
                            Text(widget.player.phone!,
                              style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.normal,color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              //--List Progress
              SizedBox(
                height: 425.h,
                width: 325.w,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InfoCustom(title: 'Age', info: (widget.player.age??'0') + '  Years'),
                      SizedBox(height: 20.h,),
                      InfoCustom(title: 'Height', info: (widget.player.height??'0') + '  CM'),
                      SizedBox(height: 20.h,),
                      InfoCustom(title: 'Weight', info: (widget.player.weight??'0') + '  KG'),
                      SizedBox(height: 20.h,),
                      InfoCustom(title: 'Cal / Day', info: widget.player.calDay??'0'),
                    ],
                  ),
                ),
              ),
              //--Progress
              // Button_Custom(title:'Progress',function: ButtonProgress,)

            ],
          ),
        ),
      ),
    );
  }
}

