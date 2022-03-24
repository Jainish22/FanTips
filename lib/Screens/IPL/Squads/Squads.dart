import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Util/AppColor.dart';

class Squads extends StatelessWidget {
  const Squads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tem = ["Delhi Capitalls","Chennai Super kings","Royal Challengers Banglore","Mumbai Indians","Rajasthan Royals","kings XI Punjab","Kolkata Knight Riders","Sunrisers Hyderabad"];
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          AppSizebox.h10,
          ListView.builder(
            padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: 0.8.h,left: 3.w,right: 3.w),
                child: Container(
                  height: 7.h,
                  width: 96.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5) ,
                      color: AppColor.light
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Row(
                      children:  [
                        CircleAvatar(backgroundImage: AssetImage(""),radius: 18,),
                        AppSizebox.w10,
                        Text(tem[index],style: TextStyle(fontSize: 12),)

                      ],
                    ),
                  ),
                )
              ))
        ],
      ),
    ));
  }
}
