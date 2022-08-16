import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'AppRouter.dart';
import 'DB/Db_provider.dart';
import 'DB/db_helper.dart';
import 'InPutUi.dart';
import 'InfoPlayer.dart';
import 'Players.dart';
import 'SplachScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context , child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<DbProvider>(
              create: (context) {
                return DbProvider();
              },),

          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: AppRouter.navKey,
            home: SplashScreen(),
            theme:ThemeData(fontFamily: "Schyler"),

          ),
        );
      }
    );
  }
}