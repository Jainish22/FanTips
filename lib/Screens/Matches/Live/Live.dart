import 'package:fantips/Util/Sizebox.dart';
import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';

class Live extends StatelessWidget {
  const Live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            AppSizebox.h20,
            MyContainer6(),AppSizebox.h10,
            MyContainer6(),AppSizebox.h10,
            MyContainer6()
          ],
        ),
      )
    );
  }
}
