import 'package:fantips/Screens/Home/Home.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

PreferredSizeWidget MyAppbar(String text1, String text2 ) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(28),
    child: AppBar(
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

    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        height: 7.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (){Get.toNamed('home');},
              child: Column(
                children: const [
                  Icon(Icons.home,color: Colors.white,size: 28),
                  Text(AppString.home,style: TextStyle(fontSize: 12),)
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('home');},
              child: Column(
                children: const [
                  Icon(Icons.videogame_asset_outlined,color: Colors.white,size: 28),
                  Text(AppString.matches,style: TextStyle(fontSize: 12),)
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('home');},
              child: Column(
                children: const [
                  Icon(Icons.sports_cricket_outlined,color: Colors.white,size: 28),
                  Text(AppString.ipl,style: TextStyle(fontSize: 12),)
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('home');},
              child: Column(
                children: const [
                  Icon(Icons.person,color: Colors.white,size: 28),
                  Text(AppString.exports,style: TextStyle(fontSize: 12),)
                ],
              )
            ),
            InkWell(
              onTap: (){Get.toNamed('home');},
              child: Column(
                children: const [
                  Icon(Icons.more_horiz,color: Colors.white,size: 28),
                  Text(AppString.more,style: TextStyle(fontSize: 12),)
                ],
              )
            ),
          ],
        )
      ),
    );
  }
}
