import 'package:carousel_slider/carousel_slider.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:fantips/Widgets/MyTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(AppString.fanTips, AppString.logIn),
      bottomNavigationBar: MyBottom(),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSizebox.h15,
                const MyTitle(text: AppString.matchesForyou),
                AppSizebox.h15,
                SizedBox(
                  height: 19.h,
                  width: 100.w,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        viewportFraction: 1,
                      ),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                        return const MyContainer1();
                      }),
                ),
                AppSizebox.h15,
                const MyTitle(text: AppString.featuredExperts),
                AppSizebox.h15,
                SizedBox(
                  height: 20.h,
                  width: 100.w,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(enableInfiniteScroll: true, reverse: false, autoPlay: false, viewportFraction: 1),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                        return const MyContainer2();
                      }),
                ),
                AppSizebox.h15,
                Row(
                  children: const [
                    MyTitle(text: AppString.topStories),
                    Spacer(),
                    InkWell(child: Text(AppString.viewAll, style: TextStyle(fontSize: 12))),
                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.white, size: 12),
                    AppSizebox.w15
                  ],
                ),
                AppSizebox.h15,
                SizedBox(
                  child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: const MyContainer3(),
                          onTap: () {
                            Get.toNamed('news');
                          },
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
