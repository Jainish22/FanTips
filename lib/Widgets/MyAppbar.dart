import 'package:flutter/material.dart';

PreferredSizeWidget MyAppbar(String text1, String text2 ) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(40),
    child: AppBar(
      title: Text(text1),
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: (){},
            child: Text(text2,style: TextStyle(color: Color(0xff25C06D)),),
          ),
        )
      ],
    ),
  );
}