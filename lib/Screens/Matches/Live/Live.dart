import 'package:fantips/Widgets/MyContainer.dart';
import 'package:flutter/material.dart';

import '../../../Util/Sizebox.dart';

class Live extends StatelessWidget {
  const Live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          AppSizebox.h20,
          MyContainer6()
        ],
      )
    );
  }
}
