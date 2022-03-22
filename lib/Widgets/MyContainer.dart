import 'package:fantips/Util/AppColor.dart';
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
        decoration: BoxDecoration(color: AppColor.light, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: EdgeInsets.only(top: 2.h, left: 4.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                     "Zimbabwe vs Afghanistan",
                    style: TextStyle(color: AppColor.white, fontSize: 14),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
