import 'package:fantips/Screens/Matches/Completed/Completed.dart';
import 'package:fantips/Screens/Matches/Live/Live.dart';
import 'package:fantips/Screens/Matches/Upcoming/Upcoming.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(AppString.currentMatches),
          bottom: const TabBar(
            indicatorColor: AppColor.green,
            labelColor: AppColor.green,
            unselectedLabelColor: AppColor.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: AppString.upcoming),
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
