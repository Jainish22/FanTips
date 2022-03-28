import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Fantasy extends StatelessWidget {
  const Fantasy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: const Text(AppString.createTeam),
        style: ElevatedButton.styleFrom(
          primary: AppColor.green,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              AppSizebox.h15,
              const FantasyUpcoming(),
              AppSizebox.h5,
              SizedBox(
                width: 92.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FantasySecondone(),
                    FantasySecondtwo(),
                  ],
                ),
              ),
              AppSizebox.h5,
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h),
                      child: MyContainer2(),
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }
}
