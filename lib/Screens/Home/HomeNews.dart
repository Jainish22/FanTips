import 'package:fantips/Util/Sizebox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../Util/AppColor.dart';

class HomeNews extends StatefulWidget {
  const HomeNews({Key? key}) : super(key: key);

  @override
  _HomeNewsState createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: const [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),

          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25.h,
              child: Image.asset("asset/Images/Ground.png"),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
              ),
              child: Expanded(
                child:Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w,top: 3.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  const [
                      Text(
                          'BCCI Secretary Arun Dhumal loss to the tune to thge matches... ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                      AppSizebox.h10,
                      Text(
                          'India have registered their second successive Test series win in Australia, after beating...',
                          style: TextStyle(color: AppColor.grey, fontSize: 12)),
                      AppSizebox.h10,
                      Text('20h ago',
                          style: TextStyle(color: AppColor.grey, fontSize: 12)),
                      AppSizebox.h10,
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),
                      Text("However, these were the only two wickets that Sri Lanka could get throughout the day as Mushfiqur Rahim and Liton Das then set up shop. Their fifth-wicket partnership was worth 50 runs when the umpires led the players back to their dressing rooms early due to rain. Play was eventually called off.", style: TextStyle(fontSize: 12,),),

                    ],
                  ),
                ),

              ),
            )
          ],
        ),
      )
    );
  }
}
