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

  TextEditingController search = TextEditingController();
  ScrollController scrollController = ScrollController();


  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }
  getData({value}) async{
    isLoading.value = true;
    log("******34**4");
    final result = await ExpertService.getExpert(value: '');
    if(result != null){
      getExpert.value = result;
      getitem.addAll(getExpert.value.tipsters ??[]);
    }

    log("-----${getExpert.value}");
    isLoading.value = false;
  }
}