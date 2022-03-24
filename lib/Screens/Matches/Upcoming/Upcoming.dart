import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            AppSizebox.h10,
            Text('Tomorrow, 15 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer4(),AppSizebox.h10,
            Text('Sunday, 16 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer5(),AppSizebox.h10,
            MyContainer5(),AppSizebox.h10,
            Text('Sunday, 16 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer5(),AppSizebox.h10,
            MyContainer5(),AppSizebox.h10,
          ],
        ),
      )
    );
  }
}
