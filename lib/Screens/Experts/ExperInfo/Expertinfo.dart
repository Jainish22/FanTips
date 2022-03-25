import 'package:fantips/Screens/Experts/ExperInfo/expertmatches/ExpertMatches.dart';
import 'package:fantips/Screens/Experts/ExperInfo/info/info.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExpertInfo extends StatelessWidget {
  const ExpertInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Container(padding:EdgeInsets.only(left: 2.w),child: const Text(AppString.prediction)),
          bottom: const TabBar(
            indicatorColor: AppColor.green,
            labelColor: AppColor.green,
            labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            unselectedLabelColor: AppColor.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'Matches')
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Info(),
            ExpertMatches()
          ],
        ),
      ),
    );
  }
}
