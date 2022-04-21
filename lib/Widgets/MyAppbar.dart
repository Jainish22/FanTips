import 'dart:developer';
import 'dart:math';

import 'package:fantips/Helper/MyBottomsheet/MyBottomSheet.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

PreferredSizeWidget MyAppbar(
  String text1,
) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(34),
    child: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            TextButton(onPressed: (){LoginBottomSheet();}, child: Text(AppString.logIn,style: TextStyle(color: AppColor.green),))
          ],
        )),
  );
}

PreferredSizeWidget MyAppbar1(String text1, String text2, String image) {
  return PreferredSize(
    preferredSize: Size.fromHeight(45),
    child: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            Expanded(flex: 2, child: Container()),
            Text(
              text2,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: Color(0xFF25C06D), height: 0),
            ),
            Expanded(child: Container()),
            InkWell(
              child: Image.asset(
                image,
                height: 2.4.h,
              ),
              onTap: () {
                Get.toNamed('search');
              },
            )
          ],
        )),
  );
}

class MyBottom extends StatefulWidget {
  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  @override
  Widget build(BuildContext context) {
    // List _icon = [AppIcon.home,AppIcon.match,AppIcon.ipl,Icon(Icons.person),Icon(Icons.more_horiz)];
    // List _string = [AppString.home,AppString.matches,AppString.ipl,AppString.exports,AppString.more];
    // List _navihation = ['/home','/matches','/ipl','/expert','/more'];
    int pageindex = 0;

    return SizedBox(
        height: 8.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  print("jghjgjb");
                  setState(() {
                    pageindex = 0;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('home');
                },
                child: Column(
                  children: [
                    AppSizebox.h5,
                    Image.asset(AppIcon.home, height: 3.h, color: Colors.grey),
                    AppSizebox.h2,
                    AppSizebox.h2,
                    Text(AppString.home, style: TextStyle(fontSize: pageindex==0?14:12, color: pageindex==0?Colors.white:Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 1;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('matches');
                },
                child: Column(
                  children: [
                    AppSizebox.h5,
                    Image.asset(AppIcon.match, height: 3.h, color: Colors.grey),
                    AppSizebox.h2,
                    AppSizebox.h2,
                    Text(AppString.matches, style: TextStyle(fontSize: pageindex==1?14:12, color: pageindex==1?Colors.white:Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 2;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('ipl');
                },
                child: Column(
                  children: [
                    AppSizebox.h5,
                    Image.asset(AppIcon.ipl, height: 3.h, color: Colors.grey),
                    AppSizebox.h2,
                    AppSizebox.h2,
                    Text(AppString.ipl, style: TextStyle(fontSize: pageindex==2?14:12, color: pageindex==1?Colors.white:Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 3;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('expert');
                },
                child: Column(
                  children: [
                    AppSizebox.h2,
                    Icon(Icons.person, color: Colors.grey, size: 3.7.h),
                    AppSizebox.h2,
                    Text(AppString.exports, style: TextStyle(fontSize: pageindex==3?14:12, color: pageindex==3?Colors.white:Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 4;
                  });
                  Get.offNamed('more');
                },
                splashColor: Colors.black,
                child: Column(
                  children: [
                    AppSizebox.h2,
                    Icon(Icons.more_horiz, color: Colors.grey, size: 3.7.h),
                    AppSizebox.h2,
                    Text(
                      AppString.more,
                      style: TextStyle(fontSize: pageindex==4?14:12, color: pageindex==4?Colors.white:Colors.grey),
                    )
                  ],
                )),
          ],
        ));
    //   BottomAppBar(
    //   color: AppColor.light,
    //   child: SizedBox(
    //     height: 8.h,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('home');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h5,
    //               Image.asset(AppIcon.home,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
    //               const Text(AppString.home,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('matches');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h5,
    //               Image.asset(AppIcon.match,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
    //               const Text(AppString.matches,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('ipl');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h5,
    //               Image.asset(AppIcon.ipl,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
    //               const Text(AppString.ipl,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('expert');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h2,
    //               Icon(Icons.person,color: Colors.grey,size: 3.7.h),AppSizebox.h2,
    //               const Text(AppString.exports,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('more');},
    //           splashColor: Colors.black,
    //           child: Column(
    //             children: [
    //               AppSizebox.h2,
    //               Icon(Icons.more_horiz,color: Colors.grey,size: 3.7.h),AppSizebox.h2,
    //               const Text(AppString.more,style: TextStyle(fontSize: 12,color: Colors.grey),)
    //             ],
    //           )
    //         ),
    //       ],
    //     )
    //   ),
    // );
  }
}
