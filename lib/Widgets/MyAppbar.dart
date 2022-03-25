import 'package:fantips/Screens/Home/Home.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

PreferredSizeWidget MyAppbar(String text1, String text2 ) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(28),
    child: AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:   [
          Text(text1,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 20),) ,
          Text(text2,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color(0xFF25C06D),height: 2),)
        ],
      )
    ),
  );
}

class MyBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // List _icon = [AppIcon.home,AppIcon.match,AppIcon.ipl,Icon(Icons.person),Icon(Icons.more_horiz)];
    // List _string = [AppString.home,AppString.matches,AppString.ipl,AppString.exports,AppString.more];
    // List _navihation = ['/home','/matches','/ipl','/expert','/more'];

    return BottomAppBar(
      color: AppColor.light,
      child: SizedBox(
        height: 8.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (){Get.toNamed('home');},
              child: Column(
                children: [
                  AppSizebox.h5,
                  Image.asset(AppIcon.home,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
                  const Text(AppString.home,style: TextStyle(fontSize: 12,color: Colors.grey))
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('matches');},
              child: Column(
                children: [
                  AppSizebox.h5,
                  Image.asset(AppIcon.match,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
                  const Text(AppString.matches,style: TextStyle(fontSize: 12,color: Colors.grey))
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('ipl');},
              child: Column(
                children: [
                  AppSizebox.h5,
                  Image.asset(AppIcon.ipl,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
                  const Text(AppString.ipl,style: TextStyle(fontSize: 12,color: Colors.grey))
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('expert');},
              child: Column(
                children: [
                  AppSizebox.h2,
                  Icon(Icons.person,color: Colors.grey,size: 3.7.h),AppSizebox.h2,
                  Text(AppString.exports,style: TextStyle(fontSize: 12,color: Colors.grey))
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('more');},
              splashColor: Colors.black,
              child: Column(
                children: [
                  AppSizebox.h2,
                  Icon(Icons.more_horiz,color: Colors.grey,size: 3.7.h),AppSizebox.h2,
                  Text(AppString.more,style: TextStyle(fontSize: 12,color: Colors.grey),)
                ],
              )
            ),
          ],
        )
      ),
    );
  }
}
