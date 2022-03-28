import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../Util/Sizebox.dart';
import '../../../../../Widgets/MyContainer.dart';

class CompletedFantasy extends StatelessWidget {
  const CompletedFantasy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                AppSizebox.h10,
                const FantasyCompleted(),
                AppSizebox.h5,
                // SizedBox(
                //   width: 92.w,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: const [
                //       FantasySecondone(),
                //       FantasySecondtwo(),
                //     ],
                //   ),
                // ),
                // AppSizebox.h5,
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h),
                        child: MyContainer2(),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
