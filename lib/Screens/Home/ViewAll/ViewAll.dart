import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../News/Controller/News_Controller.dart';
import '../News/HomeNews.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  final NewsController _NewsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "News",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizebox.h5,
            ListView.builder(
                itemCount: _NewsController.getNews.value.news?.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 4.w),
                    child: Obx(
                      () => InkWell(
                        onTap: () {
                          Get.to(HomeNews(
                            newimage: _NewsController.getNews.value.news?[index].image,
                            newname: _NewsController.getNews.value.news?[index].title,
                            newstime: "${_NewsController.getNews.value.news?[index].time}",
                            samlldata: "${_NewsController.getNews.value.news?[index].smallDesc}",
                          ));
                        },
                        child: Container(
                            height: 38.h,
                            width: 92.w,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            _NewsController.getNews.value.news?[index].image ?? "",
                                          ),
                                          fit: BoxFit.cover)),
                                  height: 20.h,
                                  width: 90.w,
                                  // child: Image.network(
                                  //   _NewsController
                                  //           .getNews.value.news?[index].image ??
                                  //       "",
                                  //   fit: BoxFit.cover,
                                  // ),
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
                                          // Text( timeAgo(
                                          //     "${_NewsController.getNews.value.news[index].time??""}",)
                                          //     style: const TextStyle(
                                          //         color: AppColor.grey,
                                          //         fontSize: 12)),
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
                  );
                }),
          ],
        ),
      ),
    );
  }
}
