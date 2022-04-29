import 'package:fantips/Screens/More/morefile/applay.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:rating_dialog/rating_dialog.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  void share() {
    FlutterShare.share(title: "Example", linkUrl: "'https://flutter.dev/");
  }

  final _dialog = RatingDialog(
    // your app's name?
    title: const Text(
      'Rating Dialog',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    // encourage your user to leave a high rating?
    message: const Text(
      'Tap a star to ret it on the App Store.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
    ),
    // your app's logo?
    image: Image.network("https://lh3.googleusercontent.com/1GT4w6dAfG4lkO9ja9ZOhUKqVdU21r940zFnBrBrAsYUsTXnVb44MuUpO56ohHQzAow=s200",height: 80,width: 80,),
    submitButtonText: 'Not Now',
    onSubmitted: (response) {

    },
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

    List more1 = [AppString.rateUs, AppString.share, AppString.feedBack];
    List more2 = [
      AppString.privacyPolicy,
      AppString.copyright,
      AppString.termsOfuse
    ];
    List more3 = [AppString.applyAsexperts, AppString.contactUsforbranding];

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: MyAppbar(AppString.more),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              AppSizebox.h20,
              const OptionContainer(
                text: AppString.featuredExperts,
              ),
              AppSizebox.h20,
              GestureDetector(
                child: OptionContainer(
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
                child: OptionContainer(
                  text: AppString.share,
                ),
                onTap: () {
                  share();
                },
              ),
              AppSizebox.h2,
              OptionContainer(
                text: AppString.feedBack,
              ),
              AppSizebox.h20,
              OptionContainer(
                text: AppString.privacyPolicy,
              ),
              AppSizebox.h2,
              OptionContainer(
                text: AppString.copyright,
              ),
              AppSizebox.h2,
              OptionContainer(
                text: AppString.termsOfuse,
              ),
              AppSizebox.h20,
              OptionContainer(
                text: AppString.howtoplay,
              ),
              AppSizebox.h2,
              GestureDetector(
                onTap: (){Applay();},
                child: OptionContainer(
                  text: AppString.applyAsexperts,
                ),
              ),
              AppSizebox.h2,
              OptionContainer(
                text: AppString.contactUsforbranding,
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
