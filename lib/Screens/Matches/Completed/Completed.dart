import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('Tomorrow, 15 May')
        ],
      )
    );
  }
}
