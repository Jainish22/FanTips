import 'package:fantips/Screens/Matches/Upcoming/UpcomingMatches/Fantasy/Fantasy.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';

class BestPicks extends StatelessWidget {
  const BestPicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppSizebox.h10,
          FantasyUpcoming()
        ],
      )
    );
  }
}
