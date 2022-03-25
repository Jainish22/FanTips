import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Experts extends StatelessWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(AppString.predictionExperts),
      ),
      bottomNavigationBar: MyBottom(),
      body: Column(
        children: [
          InkWell(
            child: Container(
              child: Row(
                children: [
                  Image.asset(AppIcon.list,height: 1.8.h),AppSizebox.w2,
                  Text(AppString.sortBy,style: TextStyle(color: AppColor.green,fontSize: 16)),
                  Text(AppString.avgScore,style: TextStyle(color: AppColor.green,fontSize: 16)),
                  Icon(Icons.keyboard_arrow_down_sharp,color: AppColor.green,size: 20,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
