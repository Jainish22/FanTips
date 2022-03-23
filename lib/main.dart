import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Util/GetPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.black
          ),
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
              fontFamily: 'Circular'
            ),
          ),
          backgroundColor: const Color(0xff1B1B1B),
          scaffoldBackgroundColor: Colors.black
        ),
        debugShowCheckedModeBanner: false,
        title: 'FanTips',
        getPages: Routes.routes,
        initialRoute: 'home',
      );
    });
  }
}
