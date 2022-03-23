import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:fantips/Widgets/MyTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import 'HomeNews.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(AppString.fanTips, AppString.logIn),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyTitle(text: AppString.matchesForyou),
              AppSizebox.h15,
              const MyContainer1(),
              AppSizebox.h15,
              const MyTitle(text: AppString.featuredExperts),
              AppSizebox.h15,
              const MyContainer2(),
              AppSizebox.h15,
              Row(
                children: [
                  const MyTitle(text: AppString.topStories),
                  Expanded(child: Container()),
                  const InkWell(
                    child: Text(AppString.viewAll,style: TextStyle(fontSize: 12)),
                  ),
                  const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 12),
                  AppSizebox.w15
                ],
              ),
              AppSizebox.h15,
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        InkWell(child: const MyContainer3(),onTap: (){Get.to(HomeNews());},)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Container(
//   height: 80.h,
//   child: Column(
//     children: [
//       // Container(
//       //   // height: 130.h,
//       //   decoration: BoxDecoration(
//       //       borderRadius: BorderRadius.only(
//       //           topLeft: Radius.circular(10.w),
//       //           topRight: Radius.circular(3.w))),
//       //   child: Padding(
//       //     padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 3.h),
//       //     child: Column(
//       //       crossAxisAlignment: CrossAxisAlignment.start,
//       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //       children: const [
//       //         Text(
//       //             'BCCI Secretary Arun Dhumal loss to the tune to thge matches... ',
//       //             style: TextStyle(
//       //                 fontWeight: FontWeight.bold, fontSize: 15)),
//       //         Text(
//       //             'India have registered their second successive Test series win in Australia, after beating...',
//       //             style: TextStyle(color: AppColor.grey, fontSize: 12)),
//       //         Text('20h ago',
//       //             style: TextStyle(color: AppColor.grey, fontSize: 12)),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //         Text(
//       //           "However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.",
//       //           style: TextStyle(fontSize: 12, color: AppColor.greyLight),
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // )
//     ],
//   ),
// ),
