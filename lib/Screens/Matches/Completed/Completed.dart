import 'package:fantips/Screens/Matches/Completed/Controller/Completed_Controller.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
// import 'package:get/get_core/src/get_main.dart';

class Completed extends StatefulWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  final CompletedController _completedController =
      Get.put(CompletedController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => Padding(
        padding: EdgeInsets.only(top: 2.h),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: _completedController
                    .getCompleted.value.matches?.completed?.length,
                itemBuilder: (context, index) {
                  final completeData = _completedController
                      .getCompleted.value.matches?.completed?[index];
                  final f = DateFormat('EEEEEE, d MMM');

                  return Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            f.format(DateTime.fromMillisecondsSinceEpoch(
                                completeData?.startTime ?? 0)),
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        AppSizebox.h10,
                        MyContainer7(
                          headerText: completeData?.header ?? "",
                          backgroundImage:
                              NetworkImage("${completeData?.t1Flag}"),
                          assetName: "${completeData?.t2Flag}",
                          matchesname1: "${completeData?.team1Name}",
                          matchesname2: "${completeData?.team2Name}",
                          infoMsg: '${completeData?.infoMsg}',
                          Over1: "${completeData?.t2Over}",
                          Over2: "${completeData?.t1Over}",
                          run1: "${completeData?.t1Run}",
                          run2: "${completeData?.t2Run}",
                          wk2: "${completeData?.t1Wk}",
                          wk1: "${completeData?.t2Wk}",
                          totalprediction: "${completeData?.totalprediction}",
                        ),
                        AppSizebox.h5
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
