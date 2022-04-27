import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 25.h),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade700)),
                  AppSizebox.w10,
                  const Text(
                    "LET'S CONNECT",
                    style: TextStyle(color: AppColor.greymin),
                  ),
                  AppSizebox.w10,
                  Expanded(
                    child: Divider(color: Colors.grey.shade700),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 7.h,
                width: 75.w,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    AppSizebox.w20,
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          "https://img.icons8.com/fluency/2x/google-logo.png"),
                    ),
                    AppSizebox.w15,
                    Text(
                      "Sign in with Google",
                      style: TextStyle(color: AppColor.greymin,fontSize: 13),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 7.h,
                width: 75.w,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    AppSizebox.w20,
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/128/5968/5968764.png"),
                    ),
                    AppSizebox.w15,
                    Text("Sign in with Facebook",
                      style: TextStyle(color: AppColor.greymin,fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
