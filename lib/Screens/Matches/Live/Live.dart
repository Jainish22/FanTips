import 'package:flutter/material.dart';

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
