import 'package:fantips/Screens/Matches/Completed/Completed.dart';
import 'package:fantips/Screens/Matches/Live/Live.dart';
import 'package:fantips/Screens/Matches/Upcoming/Upcoming.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Matches extends StatelessWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: MyBottom(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(padding:EdgeInsets.only(left: 2.w),child: const Text(AppString.currentMatches)),
          bottom:  TabBar(
            padding: EdgeInsets.only(right: 25.w),
             isScrollable: true,
            labelPadding: const EdgeInsets.symmetric(horizontal:10.0),
            indicatorPadding:EdgeInsets.zero ,
            indicatorColor: AppColor.green,
            labelColor: AppColor.green,
            labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            unselectedLabelColor: AppColor.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(text: AppString.upcoming,),
              Tab(text: AppString.live),
              Tab(text: AppString.completed)
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Upcoming(),
            Live(),
            Completed()
          ],
        ),
      ),
    );
  }
}
