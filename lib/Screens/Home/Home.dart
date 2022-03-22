import 'package:fantips/Util/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 10.h,
              width: 10.w,
            ),
            Text(AppString.fanTips),
          ],
        ),
      ),
    );
  }
}
