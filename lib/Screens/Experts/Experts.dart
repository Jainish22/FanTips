import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:get/state_manager.dart';

class Experts extends StatelessWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar1(AppString.predictionExperts,AppIcon.search,AppString.logIn),
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
              ),
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      height: 28.h,
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
                          // Divider(height: 1,color: Colors.grey.shade700,endIndent: 2),
                          // ListTile(title: Text(AppString.predictions),trailing: Icon(Icons.check_circle,),),
                          // Divider(height: 1,color: Colors.grey.shade700),
                          // ListTile(title: Text(AppString.avgScore),trailing: Icon(Icons.check_circle,),),
                          // Divider(height: 1,color: Colors.grey.shade700),
                          // ListTile(title: Text(AppString.wins),trailing: Icon(Icons.check_circle,),),



                        ],
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
