import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:fantips/Widgets/MyTitle.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
                  MyTitle(text: AppString.topStories),
                  Expanded(child: Container()),
                  InkWell(
                    child: Text(AppString.viewAll,style: TextStyle(fontSize: 12)),
                  ),
                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 12),
                  AppSizebox.w15
                ],
              ),
              AppSizebox.h15,
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        MyContainer3()
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
