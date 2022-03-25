import 'package:fantips/Util/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/MyAppbar.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: MyBottom(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top:6.h,left: 4.w,right: 4.w),
            child: Container(
              height: 5.h,
              width: 92.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                   color: AppColor.light
              ),
              child: TextFormField(
                cursorColor: AppColor.white,
                decoration: const InputDecoration(
                  prefixIcon: InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColor.white,
                    ),
                  ),
                  hintText: "search",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
