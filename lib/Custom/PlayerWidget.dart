import 'package:calories/DB/Db_provider.dart';
import 'package:calories/DB/db_helper.dart';
import 'package:calories/DB/playerModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../AppRouter.dart';
import '../InfoPlayer.dart';

class PlayerWidget extends StatelessWidget {
  PlayerModel playerModel;
  PlayerWidget(this.playerModel);


  // toInfo(){
  //   AppRouter.NavigatorToWidget(InfoPlayer());
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      height: 80,
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
        leading: SvgPicture.asset('assets/images/calcilator.svg',width: 50.w,),
        title: Text(playerModel.name??'',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.normal),),
        subtitle: Row(
          children: [
            Text(playerModel.address??'',style: TextStyle(fontSize: 18.sp,color: Color(0xff7668D2)),),
            Spacer(),
            Text(playerModel.phone??'',style: TextStyle(fontSize: 18.sp,color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}
