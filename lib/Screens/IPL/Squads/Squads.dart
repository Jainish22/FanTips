import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Util/AppColor.dart';

class Squads extends StatelessWidget {
  const Squads({Key? key}) : super(key: key);

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
                  child: const Text('NO', style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('YES', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          )) ??
          false;
    }

    List<String> tem = [
      "Delhi Capitalls",
      "Chennai Super kings",
      "Royal Challengers Banglore",
      "Mumbai Indians",
      "Rajasthan Royals",
      "kings XI Punjab",
      "Kolkata Knight Riders",
      "Sunrisers Hyderabad"
    ];
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            AppSizebox.h10,
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: 0.8.h, left: 3.w, right: 3.w),
                child: Container(
                  height: 7.h,
                  width: 96.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColor.light),
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT55MYVXS9ma7LYsvyWCMsmeZSglCVjG2O6PfTXm1ID1vRyy07H2CuOcMmeWDRTxVfyOYM&usqp=CAU"),
                          radius: 18,
                        ),
                        AppSizebox.w10,
                        Text(
                          tem[index],
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
