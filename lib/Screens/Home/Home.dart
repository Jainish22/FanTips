import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
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
              child: const Text(
                AppString.matchesForyou,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            AppSizebox.h15,
            const MyContainer1(),
            AppSizebox.h15,
            Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: const Text(
                AppString.featuredExperts,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            AppSizebox.h15,
            const MyContainer2()
          ],
        ),
      ),
    );
  }
}
