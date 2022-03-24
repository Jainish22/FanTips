import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';

import '../../../Util/Sizebox.dart';

class Live extends StatelessWidget {
  const Live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) =>  Padding(
                padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h),
                child: MyContainer6(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
