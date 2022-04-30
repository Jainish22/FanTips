import 'dart:developer';

import 'package:fantips/Model/Matches_Model/ExpertsModel.dart';
import 'package:fantips/Model/NewsModel.dart';
import 'package:fantips/Screens/Experts/service/ExpertsService.dart';
import 'package:fantips/Screens/Home/News/Service/News_Service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ExpertsController extends GetxController{
  Rx<Expert> getExpert = Expert().obs;
  RxList<Tipster> getitem = <Tipster>[].obs;
  RxBool isLoading = false.obs;
  RxInt index = 0.obs;
  RxInt matchSelect = 0.obs;
  bool isBottomSelect = false;

  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();

  RxInt page = 0.obs;
  RxBool isPaginationLoader = false.obs;
  RxBool isLoadMoreRunning = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        getMoreData();
      }
    });
    getData();
    super.onInit();
  }

  getMoreData() async {
    isLoadMoreRunning.value = true;

    page.value++;
    final result =
    await ExpertService.getExpert(page: page.value,);
    if (result != null) {
      getExpert.value = result;
      if (page.value == 1) {
        // service1.clear();
      }
      log("-----000000000000000${result.tipsters}");
      getitem.addAll(getExpert.value.tipsters ?? []);
      isLoadMoreRunning.value = false;
    }
  }
  getData({value}) async{
    isLoading.value = true;
    log("******34**4");
    final result = await ExpertService.getExpert( page: 20);
    if(result != null){
      getExpert.value = result;
      getitem.addAll(getExpert.value.tipsters ??[]);
    }

    log("-----${getExpert.value}");
    isLoading.value = false;
  }
}