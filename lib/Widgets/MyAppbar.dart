import 'package:flutter/material.dart';

PreferredSizeWidget MyAppbar(String text1, String text2 ) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(40),
    child: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:   [
          Text(text1,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 20),) ,
          Text(text2,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color(0xFF25C06D),height: 2),)
        ],
      )
    ),
  );
}