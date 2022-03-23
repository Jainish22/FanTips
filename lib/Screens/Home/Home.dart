import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(AppString.fanTips, AppString.logIn),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: Text(
                AppString.matchesForyou,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 2.h,),
            MyContainer1()
          ],
        ),
      ),
    );
  }
}
