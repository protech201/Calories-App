import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class InfoPlayer extends StatefulWidget {
  const InfoPlayer({Key? key}) : super(key: key);

  @override
  _InfoPlayerState createState() => _InfoPlayerState();
}

class _InfoPlayerState extends State<InfoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f7),

      // appBar: AppBar(
      //   // title: Center(child: Text('Players',style: TextStyle(fontSize: 25.sp),)),
      //
      // ),
      body: SafeArea(
        child: Column(
          children: [
            //Info
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              // width: MediaQuery.of(context).size.width/1,
              height: 200.h,
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
                  Icon(Icons.arrow_back_outlined,color: Colors.white,size: 25.sp,),
                  Spacer(),
                  Row(
                    children: [
                      ClipRRect(

                          borderRadius: BorderRadius.all(Radius.circular(25)),

                          child: Image.asset('assets/images/man.jpg',width: 105.w,height: 125.h,)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Abdallah Gh',
                            style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('84 Kg',
                            style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                          Text('1856 cal/day',
                            style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            //--List Progress
            SizedBox(
              height: 480.h,
              width: 325.w,
              child: ListView(
                children: [
                  Container(
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          children: [
                            Text('Week 1',
                              style: TextStyle(fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                              color: Color(0xff6A7CD8)),),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Row(
                                children: [
                                  Text('84 KG',
                                    style: TextStyle(fontSize: 20.sp,color: Color(0xff6A7CD8)),),
                                  SizedBox(width: 10,),
                                  Text('0.0 %',
                                    style: TextStyle(fontSize: 20.sp,color: Colors.red),),
                                ],
                              ),
                              Text('1856 cal/day',
                                style: TextStyle(fontSize: 20.sp,color: Color(0xff6A7CD8)),),

                            ],)
                          ],
                        ),
                    ),

                  ),
                  SizedBox(height: 20.h,),
                  Container(
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Week 2',
                            style: TextStyle(fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6A7CD8)),),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('84 KG',
                                    style: TextStyle(fontSize: 20.sp,color: Color(0xff6A7CD8)),),
                                  SizedBox(width: 10,),
                                  Text('0.0 %',
                                    style: TextStyle(fontSize: 20.sp,color: Colors.red),),
                                ],
                              ),
                              Text('1856 cal/day',
                                style: TextStyle(fontSize: 20.sp,color: Color(0xff6A7CD8)),),

                            ],)
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 20.h,),
                  Container(
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Week 3',
                            style: TextStyle(fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6A7CD8)),),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('84 KG',
                                    style: TextStyle(fontSize: 20.sp,color: Color(0xff6A7CD8)),),
                                  SizedBox(width: 10,),
                                  Text('0.0 %',
                                    style: TextStyle(fontSize: 20.sp,color: Colors.red),),
                                ],
                              ),
                              Text('1856 cal/day',
                                style: TextStyle(fontSize: 20.sp,color: Color(0xff6A7CD8)),),

                            ],)
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 20.h,),

                ],
              ),
            ),
            //Progress
            Container(
              alignment: Alignment.center,
              width: 325.w,
              height: 60,
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
              child: Text("Progress",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),),
            ),



          ],
        ),
      ),
    );
  }
}
