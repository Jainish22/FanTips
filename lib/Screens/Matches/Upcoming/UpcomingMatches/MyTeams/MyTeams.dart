import 'package:fantips/Util/AppStrings.dart';
import 'package:flutter/material.dart';

class MyTeams extends StatelessWidget {
  const MyTeams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(AppString.myTeams)
        ],
      )
    );
  }
}
