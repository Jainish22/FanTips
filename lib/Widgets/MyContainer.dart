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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          CircleAvatar(
                            radius: 15,
                          ),
                          Text("ZIM"),
                          Text("133/7"),
                          Text("&"),
                          Text("133/7"),
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children:  const [
                      //     CircleAvatar(
                      //       radius: 15,
                      //     ),
                      //     Text("ZIM"),
                      //     Text("133/7"),
                      //     Text("&"),
                      //     Text("133/7"),
                      //   ],
                      // ),
                      const Text(AppString.matchTime+'5:45s')
                    ],
                  ),
                  const Divider(color: AppColor.white),
                  Column(
                    children: const [
                      Text('72'),
                      Text('Prediction')
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
