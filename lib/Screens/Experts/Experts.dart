import 'package:fantips/Helper/MyBottomsheet/MyBottomSheet.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../Util/AppColor.dart';
import '../../Util/AppIcon.dart';
import '../../Util/Sizebox.dart';
import '../../Widgets/MyContainer.dart';

class Experts extends StatelessWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar1(AppString.predictionExperts,AppString.logIn,AppIcon.search),
      bottomNavigationBar: MyBottom(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              AppSizebox.h10,
              InkWell(
                onTap: (){
                  Get.bottomSheet(
                    const MyBottomSheet(),
                    backgroundColor: AppColor.light,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
                child: Container(
                  height: 6.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.light
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcon.sortby,height: 1.8.h,color: AppColor.green,),AppSizebox.w5,
                      const Text(AppString.sortBy+":",style: TextStyle(color: AppColor.green,fontSize: 16)),AppSizebox.w5,
                      const Text(AppString.avgScore,style: TextStyle(color: AppColor.green,fontSize: 16)),
                      const Icon(Icons.keyboard_arrow_down_sharp,color: AppColor.green,size: 20,)
                    ],
                  ),
                ),
              ),
              AppSizebox.h10,
              Expanded(
                child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 1.5.h,left: 4.w,right: 4.w),
                    child: const MyContainer2(),
                  );
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
