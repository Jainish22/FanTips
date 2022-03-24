import 'package:flutter/material.dart';

import '../../../Util/Sizebox.dart';
import '../../../Widgets/MyContainer.dart';

class IPLMatches extends StatelessWidget {
  const IPLMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            AppSizebox.h10,
            Text('Tomorrow, 15 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer9(),AppSizebox.h10,
            Text('Sunday, 16 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer10(),AppSizebox.h10,
            MyContainer10(),AppSizebox.h10,
            Text('Sunday, 16 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer10(),AppSizebox.h10,
            MyContainer10(),AppSizebox.h10,
          ],
        ),
      )
    );
  }
}
