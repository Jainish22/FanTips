import 'package:fantips/Util/AppStrings.dart';
import 'package:flutter/material.dart';

class Squads extends StatelessWidget {
  const Squads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(AppString.squads)
    );
  }
}
