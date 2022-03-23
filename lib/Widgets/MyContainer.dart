import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyContainer1 extends StatelessWidget {
  const MyContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 20.h,
        width: 92.w,
        decoration: BoxDecoration(
            color: AppColor.light, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: EdgeInsets.only(top: 2.h,left: 4.w,right: 5.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Zimbabwe vs Afghanistan",
                    style: TextStyle(fontSize: 12,),),
                  Image.asset(AppIcon.notification,height: 2.2.h)
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 15,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          const Text(
                            "ZIM",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text("&",  style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 15,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          const Text(
                            "ZIM",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text("&",  style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      const Text(
                        AppString.matchTime + '5:45s',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                    child: const VerticalDivider(
                        color: AppColor.DividerColor, thickness: 1),
                  ),
                  Column(
                    children: const [
                      Text(
                        '72',
                        style: TextStyle(
                            height: 1.6,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: AppColor.green),
                      ),
                      Text('Prediction',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColor.green))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer2 extends StatelessWidget {
  const MyContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 20.h,
          width: 92.w,
          decoration: BoxDecoration(
              color: AppColor.light, borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.5.h,left: 4.w,right: 4.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(radius: 20,backgroundImage: AssetImage('asset/Images/t20.png')),AppSizebox.w5,
                    Container(
                      width: 66.w,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.6.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('T20 Prediction',style: TextStyle(fontSize: 18),),
                            Row(
                              children: [
                                Image.asset(AppIcon.uTube,height: 1.h),AppSizebox.w2,
                                const Text('50.9K subscribers',style: TextStyle(fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Image.asset(AppIcon.heart, height: 2.5.h,)
                  ],
                ),
              ),
              Container(
                width: 86.w,
                child: Padding(
                  padding: EdgeInsets.only(top: 12.h,left: 5.w,right: 5.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(children: const [
                        Text('72',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        Text('Predictions')
                      ]),Container(height: 6.5.h,child: const VerticalDivider(color: AppColor.DividerColor)),
                      Column(children: const [
                        Text('429',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        Text('Average Score')
                      ]),Container(height: 6.5.h,child: VerticalDivider(color: AppColor.DividerColor)),
                      Column(children: const [
                        Text('13',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        Text('Wins')
                      ])
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}

