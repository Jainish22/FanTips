import 'package:fantips/Util/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sizer/sizer.dart';

import 'Screens/Home/Home.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: AppColor.green),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 6,
                            offset: Offset(6, 10), // Shadow position
                          ),
                        ],
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://lh3.googleusercontent.com/1GT4w6dAfG4lkO9ja9ZOhUKqVdU21r940zFnBrBrAsYUsTXnVb44MuUpO56ohHQzAow=s200",
                            ),
                            fit: BoxFit.cover),
                      ),
                      // child: Padding(
                      //   padding: EdgeInsets.only(top: 20.h,left: 12.w),
                      //   child: Text("FanTips",style: TextStyle(color: Colors.black),),
                      // ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 2.w),
                  child: Text(
                    "FANTIPS",
                    style:
                        TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 38, shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(5, 7),
                        blurRadius: 15,
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: FadingText('...',style: TextStyle(color: Colors.black,fontSize: 80),),
                ),
                // SizedBox(height: 2.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
