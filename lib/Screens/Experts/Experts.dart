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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
            child: InkWell(
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
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      height: 29.h,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w,right: 3.w),
                        child: Column(
                          children: [
                            AppSizebox.h15,
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset(AppIcon.sortby,height: 1.5.h,),
                                 AppSizebox.w5,
                                 const Text(
                                   AppString.sortBy,
                                   style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                                 ),
                               ],
                             ),
                             AppSizebox.h10,
                            Divider(height: 1,color: Colors.grey.shade700,),
                            SizedBox(height: 7.h, child: ListTile(onTap: (){},title: Text(AppString.predictions,style: TextStyle(color: AppColor.white),),trailing: Icon(Icons.check_circle,color: AppColor.white,),),),
                            Divider(height: 1,color: Colors.grey.shade700,),
                            SizedBox(height: 7.h, child: ListTile(onTap: (){},title: Text(AppString.avgScore,style: TextStyle(color: AppColor.white),),trailing: Icon(Icons.check_circle,color: AppColor.white),),),
                            Divider(height: 1,color: Colors.grey.shade700,),
                            SizedBox(height: 7.h, child: ListTile(onTap: (){},title: Text(AppString.wins,style: TextStyle(color: AppColor.white),),trailing: Icon(Icons.check_circle,color: AppColor.white),),),
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: AppColor.light,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                }
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.h),
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  ListView.builder( shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 1.5.h,right: 4.w,left: 1.5.w),
                      child: MyContainer2(),
                    );
                  },),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
