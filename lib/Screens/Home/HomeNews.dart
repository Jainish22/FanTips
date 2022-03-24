import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Util/AppColor.dart';

class HomeNews extends StatefulWidget {
  const HomeNews({Key? key}) : super(key: key);

  @override
  _HomeNewsState createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> with TickerProviderStateMixin {
  late AnimationController ColorAnimationController;
  late AnimationController TextAnimationController;
  late Animation colorTween, iconColorTween;
  late Animation<Offset> transTween;

  @override
  void initState() {
    ColorAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    colorTween = ColorTween(begin: Colors.transparent, end: Colors.black)
        .animate(ColorAnimationController);
    iconColorTween = ColorTween(begin: Colors.white, end: Colors.white)
        .animate(ColorAnimationController);

    TextAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));

    transTween = Tween(begin: Offset(-10, 40), end: Offset(-10, 0))
        .animate(TextAnimationController);

    super.initState();
  }

  bool scrollListeners(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 130);

      TextAnimationController.animateTo((scrollInfo.metrics.pixels - 130) / 1);
      return true;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: MyBottom(),
      body: NotificationListener<ScrollNotification>(
        onNotification: scrollListeners,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 25.h,
                    child: Image.asset("asset/Images/Ground.png"),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 5.w, right: 5.w, top: 3.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:   const [
                            Text('BCCI Secretary Arun Dhumal loss to the tune to thge matches... ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)), AppSizebox.h10,
                            Text('India have registered their second successive Test series win in Australia, after beating...', style: TextStyle(color: AppColor.grey, fontSize: 12)), AppSizebox.h10,
                            Text('20h ago', style: TextStyle(color: AppColor.grey, fontSize: 12)), AppSizebox.h10,
                            Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10.h,
              child: AnimatedBuilder(
                animation: ColorAnimationController,
                builder: (context, child) => AppBar(
                  backgroundColor: colorTween.value,
                  elevation: 0,
                  titleSpacing: 0.0,
                  title: Transform.translate(
                    offset: transTween.value,
                    child: const Text(
                        'BCCI Secretary Arun Dhumal loss to the tune to thge matches... ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                  ),
                  // iconTheme: IconThemeData(
                  //   color: iconColorTween.value,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
