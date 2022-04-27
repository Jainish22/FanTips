import 'package:fantips/Helper/MyBottomsheet/MyBottomSheet.dart';
import 'package:fantips/Screens/loginpage/loginpage.dart';
import 'package:fantips/Util/AppColor.dart';
import 'package:fantips/Util/AppIcon.dart';
import 'package:fantips/Util/AppStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Util/Sizebox.dart';

PreferredSizeWidget MyAppbar(
  String text1,
) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(34),
    child: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            TextButton(
                onPressed: () {
                  LoginBottomSheet();
                },
                child: InkWell(
                    onTap: () {
                      Get.to(Login());
                    },
                    child: const Text(
                      AppString.logIn,
                      style: TextStyle(color: AppColor.green),
                    )))
          ],
        )),
  );
}

PreferredSizeWidget MyAppbar1(String text1, String text2, String image) {
  return PreferredSize(
    preferredSize: Size.fromHeight(45),
    child: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            Expanded(flex: 2, child: Container()),
            InkWell(
              onTap: () {
                Get.to(Login());
              },
              child: Text(
                text2,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF25C06D),
                    height: 0),
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              child: Image.asset(
                image,
                height: 2.4.h,
              ),
              onTap: () {
                Get.toNamed('search');
              },
            )
          ],
        )),
  );
}

class MyBottom extends StatefulWidget {
  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 8.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  print("jghjgjb");
                  setState(() {
                    pageindex = 0;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('home');
                },
                child: Column(
                  children: [
                    AppSizebox.h5,
                    Image.asset(AppIcon.home, height: 3.h, color: Colors.grey),
                    AppSizebox.h2,
                    AppSizebox.h2,
                    Text(AppString.home,
                        style: TextStyle(
                            fontSize: pageindex == 0 ? 14 : 12,
                            color: pageindex == 0 ? Colors.white : Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 1;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('matches');
                },
                child: Column(
                  children: [
                    AppSizebox.h5,
                    Image.asset(AppIcon.match, height: 3.h, color: Colors.grey),
                    AppSizebox.h2,
                    AppSizebox.h2,
                    Text(AppString.matches,
                        style: TextStyle(
                            fontSize: pageindex == 1 ? 14 : 12,
                            color: pageindex == 1 ? Colors.white : Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 2;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('ipl');
                },
                child: Column(
                  children: [
                    AppSizebox.h5,
                    Image.asset(AppIcon.ipl, height: 3.h, color: Colors.grey),
                    AppSizebox.h2,
                    AppSizebox.h2,
                    Text(AppString.ipl,
                        style: TextStyle(
                            fontSize: pageindex == 2 ? 14 : 12,
                            color: pageindex == 1 ? Colors.white : Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 3;
                    print("pageindex===>$pageindex");
                  });
                  Get.offNamed('expert');
                },
                child: Column(
                  children: [
                    AppSizebox.h2,
                    Icon(Icons.person, color: Colors.grey, size: 3.7.h),
                    AppSizebox.h2,
                    Text(AppString.exports,
                        style: TextStyle(
                            fontSize: pageindex == 3 ? 14 : 12,
                            color: pageindex == 3 ? Colors.white : Colors.grey))
                  ],
                )),
            InkWell(
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    pageindex = 4;
                  });
                  Get.offNamed('more');
                },
                splashColor: Colors.black,
                child: Column(
                  children: [
                    AppSizebox.h2,
                    Icon(Icons.more_horiz, color: Colors.grey, size: 3.7.h),
                    AppSizebox.h2,
                    Text(
                      AppString.more,
                      style: TextStyle(
                          fontSize: pageindex == 4 ? 14 : 12,
                          color: pageindex == 4 ? Colors.white : Colors.grey),
                    )
                  ],
                )),
          ],
        ));
    //   BottomAppBar(
    //   color: AppColor.light,
    //   child: SizedBox(
    //     height: 8.h,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('home');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h5,
    //               Image.asset(AppIcon.home,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
    //               const Text(AppString.home,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('matches');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h5,
    //               Image.asset(AppIcon.match,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
    //               const Text(AppString.matches,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('ipl');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h5,
    //               Image.asset(AppIcon.ipl,height: 3.h,color: Colors.grey),AppSizebox.h2,AppSizebox.h2,
    //               const Text(AppString.ipl,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('expert');},
    //           child: Column(
    //             children: [
    //               AppSizebox.h2,
    //               Icon(Icons.person,color: Colors.grey,size: 3.7.h),AppSizebox.h2,
    //               const Text(AppString.exports,style: TextStyle(fontSize: 12,color: Colors.grey))
    //             ],
    //           )
    //         ),
    //         InkWell(
    //           highlightColor: Colors.transparent,
    //           splashFactory: NoSplash.splashFactory,
    //           onTap: (){Get.offNamed('more');},
    //           splashColor: Colors.black,
    //           child: Column(
    //             children: [
    //               AppSizebox.h2,
    //               Icon(Icons.more_horiz,color: Colors.grey,size: 3.7.h),AppSizebox.h2,
    //               const Text(AppString.more,style: TextStyle(fontSize: 12,color: Colors.grey),)
    //             ],
    //           )
    //         ),
    //       ],
    //     )
    //   ),
    // );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  int pageindex = 0;

  // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    InkWell(
      onTap: () {
        // pageindex = 0;
        Get.offNamed('more');
      },
    ),
    InkWell(
      onTap: () {
        // pageindex = 0;
        Get.offNamed('more');
      },
    ),
    InkWell(
      onTap: () {
        // pageindex = 0;
        Get.offNamed('more');
      },
    ),
    InkWell(
      onTap: () {
        // pageindex = 0;
        Get.offNamed('more');
      },
    ),
    InkWell(
      onTap: () {
        // pageindex = 0;
        Get.offNamed('more');
      },
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcon.home),
              ),
              label: 'Home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcon.home),
              ),
              label: 'Home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcon.home),
              ),
              label: 'Home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcon.home),
              ),
              label: 'Home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppIcon.home),
              ),
              label: 'Home',
              backgroundColor: Colors.grey),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
