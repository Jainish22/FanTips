import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Util/AppIcon.dart';
import '../../../../Util/Sizebox.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children:  [
            Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.share,color: AppColor.white,),
                ],
              ),
            ),
            const CircleAvatar(radius: 60,backgroundImage: AssetImage(""),),
            AppSizebox.h20,
            const Text(AppString.t20,style: TextStyle(fontSize: 20),),
            AppSizebox.h10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppIcon.uTube,height: 2.h),AppSizebox.w5,
                const Text(AppString.utube,style: TextStyle(fontSize: 15),)
              ],
            ),
            AppSizebox.h20,
            Container(height: 3.h,width: 25.w,color: AppColor.light,child: const Center(child: Text(AppString.viewChannel,textAlign: TextAlign.center,style: TextStyle(fontSize: 12),)),),
            AppSizebox.h20,
            Container(
              height: 36.h,
              width: 86.w,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 32.w),
                      child: const VerticalDivider(
                        color: AppColor.DividerColor,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14.h),
                      child: Divider(height: 1,color: Colors.grey.shade700,),
                    ),
                    Positioned(
                      top: 3.h,left: 4.w,
                      child: Column(children: const [
                        Text("120",style: TextStyle(fontSize: 30),),
                        Text(AppString.prediction,style: TextStyle(fontSize: 15),)
                      ],),
                    ),
                    Positioned(
                      top: 3.h,left: 42.w,
                      child: Column(children: const [
                        Text("479",style: TextStyle(fontSize: 30),),
                        Text(AppString.avgS,style: TextStyle(fontSize: 15),)
                      ],),
                    ),

                    Positioned(
                      top: 17.h,left: 7.w,
                      child: Column(children: const [
                        Text("429",style: TextStyle(fontSize: 30),),
                        Text(AppString.wins,style: TextStyle(fontSize: 15),)
                      ],),
                    ),
                    Positioned(
                      top: 17.h,left: 42.w,
                      child: Column(children: const [
                        Text("50.8K",style: TextStyle(fontSize: 30),),
                        Text(AppString.subscriber,style: TextStyle(fontSize: 15),)
                      ],),
                    ),

                    // Positioned(
                    //   top: 13.h,
                    //   child: SizedBox(
                    //     width: 54.w,
                    //     child: Padding(
                    //       padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                    //       // child: Row(
                    //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       //   children: [
                    //       //   Column(children: const [
                    //       //     Text("444",style: TextStyle(fontSize: 30),),
                    //       //     Text("fgfg",style: TextStyle(fontSize: 15),)
                    //       //   ],),
                    //       //     // Container(width: 1,height: 11.4.h, color:AppColor.DividerColor),
                    //       //   Column(children: const [
                    //       //     Text("444",style: TextStyle(fontSize: 30),),
                    //       //     Text("fgfg",style: TextStyle(fontSize: 15),)
                    //       //   ],),
                    //       // ],),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )

            ),
          ],
        )
    );
  }
}
