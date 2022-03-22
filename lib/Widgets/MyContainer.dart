
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
                    "Zimbabe vs Afghhanistan",
                    style: TextStyle(color: AppColor.white, fontSize: 12,),),
                  Image.asset("asset/icon/Vector.png",height: 2.2.h)
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children:  const [
                  CircleAvatar(
                    radius: 15,
                  ),
                  Text("ZIM",style: TextStyle(fontSize: 14,color: AppColor.white),),
                  Text("133/7",style: TextStyle(color: AppColor.white),),
                  Text("&",style: TextStyle(color: AppColor.white),),
                  Text("133/7",style: TextStyle(color: AppColor.white),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
