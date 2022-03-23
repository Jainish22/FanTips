import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
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
          padding: EdgeInsets.only(top: 2.h, left: 4.w, right: 5.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Zimbabwe vs Afghanistan",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Image.asset(AppIcon.notification, height: 2.2.h)
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
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
                          Text("133/7",  style: const TextStyle(fontWeight: FontWeight.w700),),
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
                        color: AppColor.DividerColor, thickness: 2),
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
