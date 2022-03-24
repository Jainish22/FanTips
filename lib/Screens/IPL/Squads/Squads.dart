import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Squads extends StatelessWidget {
  const Squads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          AppSizebox.h10,
          ListView.builder(
            padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: 0.8.h,left: 3.w,right: 3.w),
                child: MyContainer8(),
              ))
        ],
      ),
    ));
  }
}
