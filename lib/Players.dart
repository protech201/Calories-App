import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class players extends StatefulWidget {
  const players({Key? key}) : super(key: key);

  @override
  _playersState createState() => _playersState();
}

class _playersState extends State<players> {
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
            //--app bar
            Container(
            alignment: Alignment.center,
            // width: MediaQuery.of(context).size.width/1,
            height: 65.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
              gradient: LinearGradient(colors: [
                Color(0xff6A7CD8),
                Color(0xff8F3CC3),
              ]),
            ),
            child: Row(
              children: [
                Icon(Icons.arrow_back_outlined,color: Colors.white,size: 30.sp,),
                Spacer(),
                Text("Players",style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
                Spacer(),
                SizedBox(width: 30.w,)
              ],
            ),
              ),
            SizedBox(height: 20.h,),
            //--Search
            Stack(
              alignment: Alignment.centerRight,
              children:[
                SizedBox(
                width: 325.w,
                height: 55,
                child: Container(
                  padding: EdgeInsets.only(left: 8),
                  alignment: Alignment.centerLeft,
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

                  child:   const TextField(
                    // controller: age,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 25,color: Color(0xff6A7CD8)), //#AEBAF8
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 25,color: Color(0xffC0CAD7)),
                    ),
                  ),
                ),

              ),
                Container(
                  width: 57.h,
                  height: 55,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xff6A7CD8),
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
                  child: Icon(Icons.search,color: Colors.white,size: 30.sp,),
                )
        ]
            ),
            SizedBox(height: 30.h,),
            //--List Players
            SizedBox(
              height: 535.h,
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
                    child: ListTile(
                      leading: Image.asset('assets/images/man.jpg',width: 54.w,height: 60,),
                      title: Text('Abdallah Gh',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                      subtitle: Row(
                        children: [
                          Text('Gaza - Al Naser',style: TextStyle(fontSize: 15.sp,color: Color(0xff7668D2)),),
                          Spacer(),
                          Text('0594301380'),
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
                    child: ListTile(
                      leading: Image.asset('assets/images/man.jpg',width: 54.w,height: 60,),
                      title: Text('Abdallah Gh',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                      subtitle: Row(
                        children: [
                          Text('Gaza - Al Naser',style: TextStyle(fontSize: 15.sp,color: Color(0xff7668D2)),),
                          Spacer(),
                          Text('0594301380'),
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
                    child: ListTile(
                      leading: Image.asset('assets/images/man.jpg',width: 54.w,height: 60,),
                      title: Text('Abdallah Gh',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                      subtitle: Row(
                        children: [
                          Text('Gaza - Al Naser',style: TextStyle(fontSize: 15.sp,color: Color(0xff7668D2)),),
                          Spacer(),
                          Text('0594301380'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Add Players
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
              child: Text("Add Player",style: TextStyle(
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
