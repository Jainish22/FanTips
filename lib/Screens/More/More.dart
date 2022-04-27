import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:sizer/sizer.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {

  void share(){
    FlutterShare.share(title: "Example",linkUrl: "'https://flutter.dev/");
  }

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

    List more1 = [AppString.rateUs,AppString.share,AppString.feedBack];
    List more2 = [AppString.privacyPolicy,AppString.copyright,AppString.termsOfuse];
    List more3 = [AppString.applyAsexperts,AppString.contactUsforbranding];

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: MyAppbar(AppString.more),
        bottomNavigationBar: MyBottom(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSizebox.h20,
                OptionContainer(text: AppString.favouriteExperts, ontap: (){}),
                AppSizebox.h20,
                SizedBox(
                  height: 25.h,
                  child: Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: more1.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [OptionContainer(text: more1[index],ontap: (){}), AppSizebox.h2],
                        );
                      }
                    ),
                  ),
                ),
                AppSizebox.h20,
                OptionContainer(text: AppString.playGames,ontap: (){}),
                AppSizebox.h20,
                SizedBox(
                  height: 25.h,
                  child: Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: more2.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [OptionContainer(text: more2[index],ontap: (){}), AppSizebox.h2],
                        );
                      }
                    ),
                  ),
                ),
                AppSizebox.h20,
                SizedBox(
                  height: 25.h,
                  child: Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: more3.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [OptionContainer(text: more3[index],ontap: (){}), AppSizebox.h2],
                        );
                      }
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
