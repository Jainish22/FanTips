import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

///First Container Home
class MyContainer1 extends StatelessWidget {
  const MyContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.toNamed('upcomingmatches');},
      child: Container(
        height: 20.h,
        width: 92.w,
        decoration: BoxDecoration(
            color: AppColor.light, borderRadius: BorderRadius.circular(10)),
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

///Second Container T20Prediction
class MyContainer2 extends StatelessWidget {
  const MyContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.toNamed('expertinfo');},
      child: Container(
          height: 20.h,
          width: 92.w,
          decoration: BoxDecoration(
              color: AppColor.light, borderRadius: BorderRadius.circular(10)),
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
              Positioned(top: 2.h, left: 82.w, child: Image.asset(AppIcon.heart, height: 2.5.h,)),
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

///Third Container Home news
class MyContainer3 extends StatelessWidget {
  const MyContainer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w,right: 4.w),
      child: Container(
          height: 38.h,
          width: 92.w,
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

///Fourth Container Upcoming
class MyContainer4 extends StatelessWidget {
  const MyContainer4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        SizedBox(width: 40.w)
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(radius: 15, backgroundImage: AssetImage('asset/Images/Afg.png')),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500),),
                        SizedBox(width: 40.w)
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
    );
  }
}

///Fifth Container IPLMatches time
class MyContainer5 extends StatelessWidget {
  const MyContainer5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        SizedBox(width: 40.w)
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(radius: 15, backgroundImage: AssetImage('asset/Images/Afg.png')),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500),),
                        SizedBox(width: 40.w)
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
                  width: 20.w,
                  child: Column(
                    children: const [
                      Text('Starts At',style: TextStyle(height:3,fontSize: 12)),
                      Text('06:00 PM',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

///Sixth Container Live
class MyContainer6 extends StatelessWidget {
  const MyContainer6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 92.w,
      decoration: BoxDecoration(
          color: AppColor.light, borderRadius: BorderRadius.circular(10)),
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
                        const CircleAvatar(radius: 15,backgroundImage: AssetImage('',)),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                        SizedBox(width: 24.w),
                        const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                        SizedBox(width: 1.w),
                        Text("(20)", style: TextStyle(color: AppColor.grey,fontSize: 10))

                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(radius: 15,backgroundImage: AssetImage('')),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                        SizedBox(width: 24.w),
                        const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                        SizedBox(width: 1.w),
                        Text("(20)", style: TextStyle(color: AppColor.grey,fontSize: 10))
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Row(children: [
                      Image.asset(AppIcon.live,height: 1.5.h,),AppSizebox.w2,
                      Text("LIVE",)
                    ],)
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
            ),
          ],
        ),
      ),
    );
  }
}

///Seventh Container IPLMatches
class MyContainer7 extends StatelessWidget {
  const MyContainer7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 92.w,
      decoration: BoxDecoration(
          color: AppColor.light, borderRadius: BorderRadius.circular(10)),
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
                        const CircleAvatar(radius: 15,backgroundImage: AssetImage('',)),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                        SizedBox(width: 24.w),
                        const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                        SizedBox(width: 1.w),
                        Text("(20)", style: TextStyle(color: AppColor.grey,fontSize: 10))

                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(radius: 15,backgroundImage: AssetImage('')),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                        SizedBox(width: 24.w),
                        const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                        SizedBox(width: 1.w),
                        Text("(20)", style: TextStyle(color: AppColor.grey,fontSize: 10))
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    const Text("Sri Lanka Won By 20 Runs")
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
            ),
          ],
        ),
      ),
    );
  }
}

///8 option container
class OptionContainer extends StatelessWidget {

  final String text;
  final GestureTapCallback ontap;

  const OptionContainer({required this.text,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.light,
      child: ListTile(
        onTap: ontap,
        title: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14)),
        trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 16,),
      ),
    );
  }
}

///9 Expert Matches
class MyContainer8 extends StatelessWidget {
  const MyContainer8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 92.w,
      decoration: BoxDecoration(
          color: AppColor.light, borderRadius: BorderRadius.circular(10)),
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
                Image.asset(AppIcon.info,height: 2.2.h)
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
                        const CircleAvatar(radius: 15,backgroundImage: AssetImage('',)),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                        SizedBox(width: 24.w),
                        const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                        SizedBox(width: 1.w),
                        Text("(20)", style: TextStyle(color: AppColor.grey,fontSize: 10))

                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(radius: 15,backgroundImage: AssetImage('')),
                        SizedBox(width: 2.w),
                        const Text("ZIM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                        SizedBox(width: 24.w),
                        const Text("133/7",  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                        SizedBox(width: 1.w),
                        const Text("(20)", style: TextStyle(color: AppColor.grey,fontSize: 10))
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                  ],
                ),
                SizedBox(
                    height: 9.h,
                    child: const VerticalDivider(color: AppColor.DividerColor, thickness: 1)),
                SizedBox(
                  width: 19.w,
                  child: Column(
                    children: const [
                      Text('#72',style: TextStyle(height: 1.6,fontSize: 30,fontWeight: FontWeight.w900,color: AppColor.green)),
                      Text('Best Rank',style: TextStyle(fontWeight: FontWeight.w400,color: AppColor.green))
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Sri Lanka Won By 20 Runs"),
                SizedBox(
                  width: 22.w,
                  child: Row(
                    children: [
                      Image.asset(AppIcon.group,height: 1.5.h,),AppSizebox.w5,
                      const Text("3 Teams"),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///10 Matches-Fantasy-first container
class FantasyUpcoming extends StatelessWidget {
  const FantasyUpcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 12.5.h,
        width: 92.w,
        decoration: BoxDecoration(
            color: AppColor.light, borderRadius: BorderRadius.circular(10)
        ),
        child: Stack(
          children: [
            Positioned(
                top: 3.2.h,left: 1.3.w,
                child: SizedBox(width: 88.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 25.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(radius: 3.h),
                            const Text('MI',style: TextStyle(color: AppColor.greymin,fontSize: 18))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,width: 24.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text (AppString.matchTime,style: TextStyle(color: AppColor.greymin,fontSize: 12)),
                            Text('5h 30m',style: TextStyle(color: AppColor.greymin,fontSize: 18,fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('RCB',style: TextStyle(color: AppColor.greymin,fontSize: 18)),
                            CircleAvatar(radius: 3.h)
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ),
          ],
        )
    );
  }
}

///11 FantasySecondone
class FantasySecondone extends StatelessWidget {
  const FantasySecondone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w),
      height: 4.5.h,
      width: 45.5.w,
      decoration: const BoxDecoration(
          color: AppColor.light, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6),topLeft: Radius.circular(6))
      ),
      child: Row(
        children: [
          Image.asset(AppIcon.sortby,height: 2.h,color: AppColor.green,),AppSizebox.w5,
          const Text(AppString.avgS,style: TextStyle(color: AppColor.green),)
        ],
      ),
    );
  }
}

///12 FantasySecondtwo
class FantasySecondtwo extends StatelessWidget {
  const FantasySecondtwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w),
      height: 4.5.h,
      width: 45.5.w,
      decoration: const BoxDecoration(
          color: AppColor.light, borderRadius: BorderRadius.only(bottomRight: Radius.circular(6),topRight: Radius.circular(6))
      ),
      child: Row(
        children: [
          Image.asset(AppIcon.heart,height: 2.h),AppSizebox.w5,
          const Text(AppString.favourite)
        ],
      ),
    );
  }
}


