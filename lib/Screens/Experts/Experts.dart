import 'package:fantips/Util/AppStrings.dart';
import 'package:fantips/Widgets/MyAppbar.dart';
import 'package:flutter/material.dart';

class Experts extends StatelessWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(AppString.predictionExperts),
      ),
      bottomNavigationBar: MyBottom(),
      body: Column(
        children: const [
          Text('Expert Screen')
        ],
      ),
    );
  }
}
