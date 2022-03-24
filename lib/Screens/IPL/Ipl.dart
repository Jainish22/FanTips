import 'package:fantips/Screens/IPL/PointTable/PointTable.dart';
import 'package:fantips/Screens/IPL/Squads/Squads.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'IPLMatches/IPLMatches.dart';

class Ipl extends StatelessWidget {
  const Ipl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: MyBottom(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(padding:EdgeInsets.only(left: 2.w),child: const Text(AppString.currentMatches)),
          bottom:  const TabBar(
            indicatorColor: AppColor.green,
            labelColor: AppColor.green,
            labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            unselectedLabelColor: AppColor.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: AppString.squads),
              Tab(text: AppString.matches),
              Tab(text: AppString.pointTable)
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Squads(),
            IPLMatches(),
            PointTable()
          ],
        ),
      ),
    );
  }
}
