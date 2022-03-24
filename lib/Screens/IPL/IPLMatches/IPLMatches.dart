import 'package:flutter/material.dart';

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
             MyContainer1(),AppSizebox.h10,
            Text('Sunday, 16 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer4(),AppSizebox.h10,
            MyContainer4(),AppSizebox.h10,
            Text('Sunday, 16 May',style: TextStyle(fontSize: 16)),AppSizebox.h10,
            MyContainer4(),AppSizebox.h10,
            MyContainer4(),AppSizebox.h10,
          ],
        ),
      )
    );
  }
}
