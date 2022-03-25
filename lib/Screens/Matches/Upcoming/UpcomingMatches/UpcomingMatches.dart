import 'package:fantips/Screens/IPL/Squads/Squads.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BestPicks/BestPicks.dart';
import 'Fantasy/Fantasy.dart';
import 'MyTeams/MyTeams.dart';
import 'Quiz/Quiz.dart';

class UpcomingMatches extends StatelessWidget {
  const UpcomingMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: MyBottom(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(padding:EdgeInsets.only(left: 2.w),child: const Text(AppString.currentMatches)),
          bottom: const TabBar(
            padding: EdgeInsets.zero,
            isScrollable: true,
            indicatorPadding:EdgeInsets.zero ,
            indicatorColor: AppColor.green,
            labelColor: AppColor.green,
            labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            unselectedLabelColor: AppColor.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: AppString.fantasy,),
              Tab(text: AppString.bestPicks),
              Tab(text: AppString.myTeams),
              Tab(text: AppString.quiz),
              Tab(text: AppString.squads)
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Fantasy(),
            BestPicks(),
            MyTeams(),
            Quiz(),
            Squads()
          ],
        ),
      ),
    );
  }
}
