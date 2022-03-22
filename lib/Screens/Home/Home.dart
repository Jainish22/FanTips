import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(AppString.fanTips, AppString.logIn),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10,8,10,0),
          child: Column(
            children: [
              Text(AppString.matchesForyou,style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
