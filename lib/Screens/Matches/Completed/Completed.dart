import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            AppSizebox.h10,
            Text('Yesterday, 15 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer7(),AppSizebox.h10,
            Text('Sunday, 17 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer7(),AppSizebox.h10,
            MyContainer7(),AppSizebox.h10,
            Text('Sunday, 17 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer7(),AppSizebox.h10,
            MyContainer7(),AppSizebox.h10,
          ],
        ),
      )
    );
  }
}
