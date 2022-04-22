import 'package:carousel_slider/carousel_slider.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:fantips/Widgets/MyTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import 'News/Controller/News_Controller.dart';

final List imgList = [
  MyContainer1(),
  MyContainer1(),
  MyContainer1(),
  MyContainer1(),
];

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final NewsController _NewsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    // var dtf = DateFormat('dd, yyyy MMM');
    // var day = DateFormat('EEEE');
    // getTime(var time) {
    //   return DateFormat.jm().format(DateFormat("hh:mm:ss").parse(time));
    // }
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('h:mm').format(now);
    int _current = 0;
    final CarouselController _controller = CarouselController();

    return Scaffold(
      appBar: MyAppbar(AppString.fanTips),
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
                      carouselController: _controller,
                      options: CarouselOptions(
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      itemCount: 4,
                      itemBuilder:
                          (BuildContext context, int index, int pageViewIndex) {
                        return const MyContainer1();
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 14.0,
                        height: 4.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15),
                            color: _current == entry.key
                                ? AppColor.green
                                : AppColor.grey.withOpacity(
                                    _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                AppSizebox.h15,
                const MyTitle(text: AppString.featuredExperts),
                AppSizebox.h15,
                SizedBox(
                  height: 20.h,
                  width: 100.w,
                  child: CarouselSlider.builder(
                      carouselController: _controller,
                      options: CarouselOptions(
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      itemCount: 4,
                      itemBuilder:
                          (BuildContext context, int index, int pageViewIndex) {
                        return const MyContainer2();
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 14.0,
                        height: 4.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15),
                            color: _current == entry.key
                                ? AppColor.green
                                : AppColor.grey.withOpacity(
                                    _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                AppSizebox.h15,
                Row(
                  children: [
                    const MyTitle(text: AppString.topStories),
                    Expanded(child: Container()),
                    const InkWell(
                        child: Text(AppString.viewAll,
                            style: TextStyle(fontSize: 12))),
                    const Icon(Icons.arrow_forward_ios_sharp,
                        color: Colors.white, size: 12),
                    AppSizebox.w15
                  ],
                ),
                AppSizebox.h15,
                SizedBox(
                  child: Expanded(
                    child: ListView.builder(
                        itemCount:
                        5,
                        //_NewsController.getNews.value.news?.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.w, right: 4.w),
                              child: Obx(()=>
                                 Container(
                                    height: 38.h,
                                    width: 92.w,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      _NewsController
                                                              .getNews
                                                              .value
                                                              .news?[index]
                                                              .image ??
                                                          ""),
                                                  fit: BoxFit.cover),
                                            ),
                                            height: 20.h,
                                            width: 90.w,
                                            // child: Image.network(_NewsController.getNews.value.news![index].image.toString(), fit: BoxFit.cover),
                                          ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 16.h,
                                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(_NewsController.getNews.value.news?[index].title ?? "",
                                                      maxLines: 2, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
                                                  Text(_NewsController.getNews.value.news?[index].smallDesc ?? "",
                                                      style: const TextStyle(color: AppColor.grey, fontSize: 12)),
                                                  Text(_NewsController.getNews.value.news?[index].newsSource ?? "",
                                                      style: const TextStyle(color: AppColor.grey, fontSize: 12)),
                                                  Text(formattedDate, style: const TextStyle(fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            ),
                                            AppSizebox.h10,
                                            const Divider(
                                              height: 2,
                                              color: AppColor.DividerColor,
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                            ),
                            onTap: () {
                              Get.toNamed('news');
                            },
                          );
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
