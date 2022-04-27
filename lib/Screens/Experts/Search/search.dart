import 'dart:async';

import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../Util/AppColor.dart';
import '../../../Widgets/MyAppbar.dart';
import '../../../Widgets/MyContainer.dart';
import 'Controller/SearchController.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SearchController searchController = Get.put(SearchController());
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottom(),
      body: Padding(
        padding: EdgeInsets.only(top: 7.h),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 4.w,
              ),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.light2,
                ),
                child: TextFormField(
                  controller: searchController.controller,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  onChanged: _onSearchChanged,
                  decoration: InputDecoration(
                    prefixIcon: InkWell(
                      child: InkWell(
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColor.white,
                        ),
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    hintText: "search",
                    hintStyle: const TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    suffixIcon: InkWell(
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      onTap: () {
                        searchController.controller.clear();
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 6.h, left: 5.w, right: 5.w),
                child: Obx(
                  () {
                    if (searchController.service1.value.isEmpty) {
                      return Center(
                        child: Column(
                          children: [
                            Image.asset("asset/player/Placeholder.png"),
                            Text(
                              "No matches available",
                              style: TextStyle(fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                      );
                    } else if (searchController.service1.value.isNotEmpty) {
                      return Obx(() => Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              physics: const BouncingScrollPhysics(),
                              controller: searchController.scrollController,
                              shrinkWrap: true,
                              itemCount: searchController.service1.value.length,
                              itemBuilder: (BuildContext context, index) {
                                final search = searchController.service1[index];
                                return Column(
                                  children: [
                                    MyContainer2(
                                      backgroundImage:
                                          NetworkImage(search.profileUrl ?? ""),
                                      name: search.name ?? "",
                                      subscribers: search.subscriberCount ?? "",
                                      pr: "${search.totalPredictions ?? " "}",
                                      wins: "${search.top3 ?? " "}",
                                      age: "${search.avgScore}",
                                      // you: '${search}',
                                    ),
                                    AppSizebox.h10,
                                  ],
                                );
                              },
                            )),
                      );
                    } else {
                      return const Text("");
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }

  _onSearchChanged(String query) {
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      if (_debounce!.isActive == false) {
        await searchController.fetchProducts(
          value: searchController.controller.text,
        );
      }
    });
  }
}
