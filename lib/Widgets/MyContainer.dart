import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

//First Container
class MyContainer1 extends StatelessWidget {
  const MyContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 20.h,
        width: 95.w,
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
                    style: TextStyle(fontSize: 12,)),
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
                          const CircleAvatar(radius: 15,backgroundImage: AssetImage('asset/Images/Zim.png')),
                          SizedBox(width: 2.w),
                          const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500)),
                          SizedBox(width: 16.w),
                          const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(width: 1.w),
                          const Text("&",  style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(width: 1.w,),
                          const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 1.5.h),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(radius: 15, backgroundImage: AssetImage('asset/Images/Afg.png')),
                          SizedBox(width: 2.w),
                          const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500),),
                          SizedBox(width: 16.w),
                          const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(width: 1.w),
                          const Text("&",  style: TextStyle(fontWeight: FontWeight.w700)),
                          SizedBox(width: 1.w),
                          const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 1.5.h),
                      const Text(AppString.matchTime + ' 5:45s',style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                    child: const VerticalDivider(color: AppColor.DividerColor, thickness: 1)),
                  SizedBox(
                    width: 19.w,
                    child: Column(
                      children: const [
                        Text('72',style: TextStyle(height: 1.6,fontSize: 30,fontWeight: FontWeight.w900,color: AppColor.green)),
                        Text('Prediction',style: TextStyle(fontWeight: FontWeight.w400,color: AppColor.green))
                      ],
                    ),
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

//Second Container
class MyContainer2 extends StatelessWidget {
  const MyContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: Container(
          height: 20.h,
          width: 95.w,
          decoration: BoxDecoration(
              color: AppColor.light, borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              Positioned(
                top: 2.2.h,left: 2.w,
                child: SizedBox(
                  height: 5.h,
                  child: Row(
                    children: [
                      const CircleAvatar(radius: 20,backgroundImage: AssetImage('asset/Images/t20.png')),AppSizebox.w5,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('T20 Prediction',style: const TextStyle(fontSize: 18),),
                          Row(
                            children: [
                              Image.asset(AppIcon.uTube,height: 1.h),AppSizebox.w2,
                              const Text('50.9K subscribers',style: TextStyle(fontSize: 10),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ),
              Positioned(top: 2.h, left: 85.w, child: Image.asset(AppIcon.heart, height: 2.5.h,)),
              Positioned(
                top: 12.h,left: 5.w,
                child: SizedBox(
                  height: 7.h,
                  width: 82.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: const [
                        Text('72',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        Text(AppString.prediction)
                      ]),VerticalDivider(width: 2,color: AppColor.dBlack),
                      Column(children: const [
                        Text('429',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        Text(AppString.avgScore)
                      ]),VerticalDivider(width: 2,color: AppColor.dBlack),
                      Column(children: const [
                        Text('13',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        Text(AppString.wins)
                      ])
                    ],
                  ),
                )
              )
            ],
          )
      ),
    );
  }
}

//Third Container
class MyContainer3 extends StatelessWidget {
  const MyContainer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w,right: 4.w),
      child: Container(
          height: 38.h,
          width: 95.w,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Image.asset('asset/Images/Ground.png'),
              Container(
                height: 12.h,
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('BCCI Secretary Arun Dhumal loss to the tune to thge matches... ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    Text('India have registered their second successive Test series win in Australia, after beating...',style: TextStyle(color: AppColor.grey,fontSize: 12)),
                    Text('20h ago',style: TextStyle(color: AppColor.grey,fontSize: 12))
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}


