import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:calories/Custom/PlayerWidget.dart';
import 'package:calories/DB/Db_provider.dart';
import 'package:calories/DB/db_helper.dart';
import 'package:calories/HomePage.dart';
import 'package:calories/InfoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'AppRouter.dart';
import 'Custom/Button_Custom.dart';
import 'DB/playerModel.dart';

class Players extends StatefulWidget {
  const Players({Key? key}) : super(key: key);

  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<Players> {

  GlobalKey<FormState> InPutKey = GlobalKey();



  String? nameVaidator (String x){
    if (x.isEmpty)
      return 'Name is empty';
    else if(x.split(' ').length<2)
      return 'Name is less from 2';

  }
  String? addressVaidator (String x){
    if(x.isEmpty)
      return 'Address is empty';
  }
  String? phoneVaidator (String x){
    if(x.isEmpty)
      return 'Phone is empty';
  }



  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController CalController = TextEditingController();
  ButtonAddPlayer(){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('App Player',style: TextStyle(fontSize: 25.sp,color: Color(0xff8F3CC3)),),
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
                      controller: nameController,
                      validator: (x)=>nameVaidator(x!),
                      style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          // valueText = value;
                        });
                      },
                      controller: addressController,
                      validator: (x)=>addressVaidator(x!),
                      style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Address",
                          labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          // valueText = value;
                        });
                      },
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      validator: (x)=>phoneVaidator(x!),
                     style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Phone",
                      labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          // valueText = value;
                        });
                      },
                      controller: ageController,
                      keyboardType: TextInputType.phone,
                      // validator: (x)=>phoneVaidator(x!),
                      style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Age",
                          labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          // valueText = value;
                        });
                      },
                      controller: heightController,
                      keyboardType: TextInputType.phone,
                      // validator: (x)=>phoneVaidator(x!),
                      style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Height",
                          labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          // valueText = value;
                        });
                      },
                      controller: weightController,
                      keyboardType: TextInputType.phone,
                      // validator: (x)=>phoneVaidator(x!),
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
                      controller: CalController,
                      keyboardType: TextInputType.phone,
                      // validator: (x)=>phoneVaidator(x!),
                      style: TextStyle(color: Color(0xff8F3CC3),fontSize: 22.sp),
                      decoration: InputDecoration(
                          labelText: "Cal / Day",
                          labelStyle: TextStyle(color: Color(0xff6A7CD8),fontSize: 22.sp)),
                    ),

                    // Container(
                    //   height: 150,
                    //   child:imagePath == null?ChooseImageWidget():PickedImageWidget() ,
                    // ),
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
                child: Text('ADD'),
                onPressed: ()async {
                  if(InPutKey.currentState!.validate()){

                    PlayerModel playerModle = PlayerModel(
                        name: nameController.text,
                        address: addressController.text,
                        age: ageController.text,
                        weight: weightController.text,
                        height: heightController.text,
                        calDay: CalController.text,
                        phone: phoneController.text);
                    await Provider.of<DbProvider>(context,listen: false).createNewTask(playerModle);

                    Navigator.pop(context);
                    setState(() {

                    });

                    // DbHelper.dbHelper.insertNewTask(PlayerModel(
                    //     name: nameController.text,
                    //     address: addressController.text,
                    //     phone: phoneController.text));


                    var snackBar = SnackBar(content: Text('Add successfully'),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 1),);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    // setState(() {
                    //   // codeDialog = valueText;
                    // });
                  }


                },
              ),
            ],
          );
        });
  }
  // toInfo(){
  //   AppRouter.NavigatorToWidget(InfoPlayer());
  // }
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      appBar: AppBar(
        toolbarHeight: 65.h,
        elevation: 7,
        backgroundColor: Colors.grey.withOpacity(0),
        title: Text('Players',style: TextStyle(fontSize: 35.sp),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff6A7CD8),
                Color(0xff8F3CC3),
              ]),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
          ),
        ),

      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height/1,
            child: SingleChildScrollView(
              clipBehavior: Clip.none,
              child: Column(
                children: [
                  // //--app bar
                  // Container(
                  // alignment: Alignment.center,
                  // // width: MediaQuery.of(context).size.width/1,
                  // height: 65.h,
                  // decoration: const BoxDecoration(
                  //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                  //   gradient: LinearGradient(colors: [
                  //     Color(0xff6A7CD8),
                  //     Color(0xff8F3CC3),
                  //   ]),
                  // ),
                  // child: Row(
                  //   children: [
                  //     InkWell(
                  //         onTap: (){
                  //           Navigator.pop(context,"this data from Screen2");
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.only(left: 8),
                  //           child: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 30.sp,),
                  //         )),
                  //     Text("Players",style: TextStyle(
                  //         fontSize: 30,
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold
                  //     ),),
                  //     SizedBox(width: 10.w,)
                  //   ],
                  // ),
                  //   ),
                  // SizedBox(height: 20.h,),
                  //--Search
                  // SizedBox(height: 20.h,),
                  // Stack(
                  //     alignment: Alignment.centerRight,
                  //     children:[
                  //       SizedBox(
                  //         width: 325.w,
                  //         height: 55,
                  //         child: Container(
                  //           padding: EdgeInsets.only(left: 8),
                  //           alignment: Alignment.centerLeft,
                  //           decoration: const BoxDecoration(
                  //             borderRadius: BorderRadius.all(Radius.circular(10)),
                  //             color: Color(0xffF5F5F7),
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Color(0x29000000),
                  //                 offset: Offset(-2, -2),
                  //                 blurRadius: 2,
                  //               ),
                  //               BoxShadow(
                  //                 color: Color(0xffffffff),
                  //                 offset: Offset(2, 2),
                  //                 blurRadius: 2,
                  //               ),
                  //             ],
                  //           ),
                  //
                  //           child:   const TextField(
                  //             // controller: age,
                  //             keyboardType: TextInputType.text,
                  //             style: TextStyle(fontSize: 25,color: Color(0xff6A7CD8)), //#AEBAF8
                  //             decoration: InputDecoration(
                  //               border: InputBorder.none,
                  //               hintText: "Search",
                  //               hintStyle: TextStyle(fontSize: 25,color: Color(0xffC0CAD7)),
                  //             ),
                  //           ),
                  //         ),
                  //
                  //       ),
                  //       Container(
                  //         width: 57.h,
                  //         height: 55,
                  //         decoration: const BoxDecoration(
                  //           borderRadius: BorderRadius.all(Radius.circular(10)),
                  //           color: Color(0xff6A7CD8),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color(0x29000000),
                  //               offset: Offset(-2, -2),
                  //               blurRadius: 2,
                  //             ),
                  //             BoxShadow(
                  //               color: Color(0xffffffff),
                  //               offset: Offset(2, 2),
                  //               blurRadius: 2,
                  //             ),
                  //           ],
                  //         ),
                  //         child: Icon(Icons.search,color: Colors.white,size: 30.sp,),
                  //       )
                  //     ]
                  // ),
                  SizedBox(height: 30.h,),
                  //--List Players
                  SizedBox(
                    width: 325.w,
                    height: 580.h,
                    child: ListView.builder(
                        itemCount: Provider.of<DbProvider>(context).allPlayers.length,
                        itemBuilder: (context,index){

                          return GestureDetector(
                            onDoubleTap: () {
                              Provider.of<DbProvider>(context,listen: false)
                                  .deleteTask(Provider.of<DbProvider>(context,listen: false).allPlayers[index]);

                              var snackBar = SnackBar(content: Text('Delete successfully'),
                                backgroundColor: Colors.red,
                                duration: Duration(seconds: 1),);
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);

                            },

                            onTap: ()=>AppRouter.NavigatorToWidget(
                                InfoPlayer(Provider.of<DbProvider>(context,listen: false).allPlayers[index])),

                              child: PlayerWidget(Provider.of<DbProvider>(context).allPlayers[index]));
                        }),
                  ),
                  // SizedBox(
                  //   height: 100.h,
                  //   width: 325.w,
                  //   child: SingleChildScrollView(
                  //     child: Column(
                  //       children: [
                  //         InkWell(
                  //           onTap: toInfo,
                  //           child: Container(
                  //             margin: EdgeInsets.only(bottom: 15.h),
                  //             height: 80,
                  //             width: 325.w,
                  //             alignment: Alignment.center,
                  //             decoration: const BoxDecoration(
                  //               borderRadius: BorderRadius.all(Radius.circular(10)),
                  //               color: Color(0xffF5F5F7),
                  //               // gradient: LinearGradient(colors: [
                  //               //     Color(0xffC973FF),
                  //               //     Color(0xffAEBAF8),
                  //               //   ]),
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                   color: Color(0x29000000),
                  //                   offset: Offset(-2, -2),
                  //                   blurRadius: 2,
                  //                 ),
                  //                 BoxShadow(
                  //                   color: Color(0xffffffff),
                  //                   offset: Offset(2, 2),
                  //                   blurRadius: 2,
                  //                 ),
                  //               ],
                  //             ),
                  //             child: ListTile(
                  //               leading: SvgPicture.asset('assets/images/calcilator.svg',width: 50.w,),
                  //               title: Text('Abdallah Gh',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.normal),),
                  //               subtitle: Row(
                  //                 children: [
                  //                   Text('Gaza - Al Naser',style: TextStyle(fontSize: 18.sp,color: Color(0xff7668D2)),),
                  //                   Spacer(),
                  //                   Text('0594301380',style: TextStyle(fontSize: 18.sp,color: Colors.grey),),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         InkWell(
                  //           onTap: toInfo,
                  //           child: Container(
                  //             margin: EdgeInsets.only(bottom: 15.h),
                  //             height: 80,
                  //             width: 325.w,
                  //             alignment: Alignment.center,
                  //             decoration: const BoxDecoration(
                  //               borderRadius: BorderRadius.all(Radius.circular(10)),
                  //               color: Color(0xffF5F5F7),
                  //               // gradient: LinearGradient(colors: [
                  //               //     Color(0xffC973FF),
                  //               //     Color(0xffAEBAF8),
                  //               //   ]),
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                   color: Color(0x29000000),
                  //                   offset: Offset(-2, -2),
                  //                   blurRadius: 2,
                  //                 ),
                  //                 BoxShadow(
                  //                   color: Color(0xffffffff),
                  //                   offset: Offset(2, 2),
                  //                   blurRadius: 2,
                  //                 ),
                  //               ],
                  //             ),
                  //             child: ListTile(
                  //               leading: SvgPicture.asset('assets/images/calcilator.svg',width: 50.w,),
                  //               title: Text('Abdallah Gh',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.normal),),
                  //               subtitle: Row(
                  //                 children: [
                  //                   Text('Gaza - Al Naser',style: TextStyle(fontSize: 18.sp,color: Color(0xff7668D2)),),
                  //                   Spacer(),
                  //                   Text('0594301380',style: TextStyle(fontSize: 18.sp,color: Colors.grey),),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //
                  //
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  //Add Players
                  Button_Custom(title:'Add Player',function: ButtonAddPlayer,)



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  // Widget ChooseImageWidget(){
  //   return IconButton(onPressed: (){
  //     // pick image
  //     // imagePath = path from image picker
  //     //setState
  //   }, icon: Icon(Icons.add_a_photo));
  // }
  //
  // Widget PickedImageWidget(){
  //   return Image.file(File(imagePath!));
  // }

}
