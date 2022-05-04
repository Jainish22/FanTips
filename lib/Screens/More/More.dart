import 'package:fantips/Screens/More/contactMore.dart';
import 'package:fantips/Screens/More/favoriteMore.dart';
import 'package:fantips/Screens/More/howtoplay.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:sizer/sizer.dart';

import '../loginpage/GoogleLogin/services.dart';
import 'ApplayMore.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  void share() {
    FlutterShare.share(
        title: "Fantips",
        linkUrl:
            "https://play.google.com/store/apps/details?id=fantasy.prediction.fantips");
  }

  final _dialog = RatingDialog(
    starSize: 5.h,
    enableComment: false,
    title: const Text(
      'Rating Dialog',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    message: const Text(
      'Tap a star to ret it on the App Store.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
    ),
    image: Center(
      child: Stack(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30),
              //border: Border.all(width: 2,color: Colors.green),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.8.w, top: 0.4.h),
            child: Container(
              height: 74,
              width: 74,
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("asset/Images/fantips_logo.png"),
                  )),
            ),
          ),
        ],
      ),
    ),
    submitButtonText: 'Not Now',
    submitButtonTextStyle: TextStyle(color: Colors.green),
    onSubmitted: (response) {},
  );

  // show the dialog

  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.grey[800],
              // title:  Text('Are you sure?'),
              content: const Text(
                'Are you sure want to exit?',
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child:
                      const Text('NO', style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child:
                      const Text('YES', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          )) ??
          false;
    }

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: MyAppbar(AppString.more,),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              AppSizebox.h20,
              GestureDetector(
                onTap: () {
                  Get.to(WishListScreen());
                },
                child: const OptionContainer(
                  text: AppString.favouriteExperts,
                ),
              ),
              AppSizebox.h20,
              GestureDetector(
                child: const OptionContainer(
                  text: AppString.rateUs,
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) => _dialog,
                  );
                },
              ),
              AppSizebox.h2,
              GestureDetector(
                child: const OptionContainer(
                  text: AppString.share,
                ),
                onTap: () {
                  share();
                },
              ),
              AppSizebox.h2,
              GestureDetector(
                child: const OptionContainer(
                  text: AppString.feedBack,
                ),
                onTap: () {
                  Applay();
                },
              ),
              AppSizebox.h20,
              InkWell(
                onTap: () {},
                child: const OptionContainer(
                  text: AppString.privacyPolicy,
                ),
              ),
              AppSizebox.h2,
              const OptionContainer(
                text: AppString.copyright,
              ),
              AppSizebox.h2,
              const OptionContainer(
                text: AppString.termsOfuse,
              ),
              AppSizebox.h20,
              GestureDetector(
                onTap: () {
                  Get.to(HowToPlay());
                },
                child: const OptionContainer(
                  text: AppString.howtoplay,
                ),
              ),
              AppSizebox.h2,
              GestureDetector(
                onTap: () {
                  Get.to(Applay());
                },
                child: const OptionContainer(
                  text: AppString.applyAsexperts,
                ),
              ),
              AppSizebox.h2,
              GestureDetector(
                child: const OptionContainer(
                  text: AppString.contactUsforbranding,
                ),
                onTap: () {
                  Get.to(ContactMore());
                },
              ),
              AppSizebox.h20,
              GestureDetector(
                child: const OptionContainer(
                  text: AppString.logout,
                ),
                onTap: () {
                  {Auth.signOut().then((value) => Navigator.pop(context));}                },
              ),
            ],
          )

              // Column(
              //   children: [
              //     AppSizebox.h20,
              //     OptionContainer(text: AppString.favouriteExperts, ontap: () {}),
              //     AppSizebox.h20,
              //     SizedBox(
              //       height: 25.h,
              //       child: Expanded(
              //         child: ListView.builder(
              //             physics: const NeverScrollableScrollPhysics(),
              //             itemCount: more1.length,
              //             itemBuilder: (context, index) {
              //               return Column(
              //                 children: [OptionContainer(text: more1[index], ontap: () {}), AppSizebox.h2],
              //               );
              //             }),
              //       ),
              //     ),
              //     AppSizebox.h20,
              //     OptionContainer(text: AppString.playGames, ontap: () {}),
              //     AppSizebox.h20,
              //     SizedBox(
              //       height: 25.h,
              //       child: Expanded(
              //         child: ListView.builder(
              //             physics: const NeverScrollableScrollPhysics(),
              //             itemCount: more2.length,
              //             itemBuilder: (context, index) {
              //               return Column(
              //                 children: [OptionContainer(text: more2[index], ontap: () {}), AppSizebox.h2],
              //               );
              //             }),
              //       ),
              //     ),
              //     AppSizebox.h20,
              //     SizedBox(
              //       height: 25.h,
              //       child: Expanded(
              //         child: ListView.builder(
              //             physics: const NeverScrollableScrollPhysics(),
              //             itemCount: more3.length,
              //             itemBuilder: (context, index) {
              //               return Column(
              //                 children: [OptionContainer(text: more3[index], ontap: () {}), AppSizebox.h2],
              //               );
              //             }),
              //       ),
              //     ),
              //   ],
              // ),
              ),
        ),
      ),
    );
  }
}
