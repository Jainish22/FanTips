import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List more1 = [AppString.rateUs,AppString.share,AppString.feedBack];
    List more2 = [AppString.privacyPolicy,AppString.copyright,AppString.termsOfuse];
    List more3 = [AppString.applyAsexperts,AppString.contactUsforbranding];

    return Scaffold(
      appBar: MyAppbar(AppString.more, ''),
      bottomNavigationBar: MyBottom(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppSizebox.h20,
              const OptionContainer(text: AppString.favouriteExperts),
              AppSizebox.h20,
              SizedBox(
                height: 25.h,
                child: Expanded(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: more1.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [OptionContainer(text: more1[index]), AppSizebox.h2],
                      );
                    }
                  ),
                ),
              ),
              AppSizebox.h20,
              const OptionContainer(text: AppString.playGames),
              AppSizebox.h20,
              SizedBox(
                height: 25.h,
                child: Expanded(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: more2.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [OptionContainer(text: more2[index]), AppSizebox.h2],
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
                        children: [OptionContainer(text: more3[index]), AppSizebox.h2],
                      );
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
