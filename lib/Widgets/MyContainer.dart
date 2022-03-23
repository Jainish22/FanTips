import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
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
        height: 20.h,
        width: 95.w,
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
                    style: TextStyle(fontSize: 12,),),
                  Image.asset(AppIcon.notification, height: 2.2.h)
                ],
              ),
              AppSizebox.h5,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                            radius: 15,
                          ),
                          Text("ZIM"),
                          Text("133/7"),
                          Text("&"),
                          Text("133/7"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                            radius: 15,
                          ),
                          Text("ZIM"),
                          Text("133/7"),
                          Text("&"),
                          Text("133/7"),
                        ],
                      ),
                      const Text(AppString.matchTime + '5:45s')
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
          height: 35.h,
          width: 95.w,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: AppColor.light, borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Image.asset('asset/Images/Ground.png'),
              Container(
                height: 12.h,
                padding: EdgeInsets.only(left: 8,right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('BCCI Secretary Arun Dhumal loss to the tune to thge matches... ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    const Text('India have registered their second successive Test series win in Australia, after beating...',style: TextStyle(color: AppColor.grey,fontSize: 12)),
                    const Text('20h ago',style: TextStyle(color: AppColor.grey,fontSize: 12))
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}


