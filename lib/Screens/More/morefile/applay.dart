import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Applay extends StatefulWidget {
  const Applay({Key? key}) : super(key: key);

  @override
  _ApplayState createState() => _ApplayState();
}

class _ApplayState extends State<Applay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          item("Name", "", _name),
          Lit(),
          item("Billing Address", "", _Address),
          Lit(),
          item("Contact", "", _contact),
          Lit(),
          // TextButton(
          //   onPressed: () {
          //     AppSharedPreference.setUserName(_name.text);
          //     AppSharedPreference.setAddress(_Address.text);
          //     AppSharedPreference.setContact(_contact.text);
          //
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyDetails(_name.text, _Address.text, _contact.text)));
          //   },
          //   style: ElevatedButton.styleFrom(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(
          //             30)), // background// foreground
          //   ),
          //   child: Ink(
          //     decoration: BoxDecoration(
          //         gradient: const LinearGradient(colors: [
          //           Color(0xFFF22635),
          //           Color(0xFFB70126)
          //         ]),
          //         borderRadius: BorderRadius.circular(20)),
          //     child: Container(
          //       height: 5.5.h,
          //       width: 51.w,
          //       padding: EdgeInsets.all(1.5.h),
          //       child: const Text(
          //         "SUBMIT",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //             color: Colors.white,
          //             // fontFamily: "GothamPro",
          //             fontSize: 16,
          //             fontWeight: FontWeight.w400),
          //       ),
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }

  TextEditingController _name = TextEditingController();
  TextEditingController _Address = TextEditingController();
  TextEditingController _contact = TextEditingController();

  Widget item(String name, String text, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 18,
                fontFamily: "GothamPro",
                fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          height: 30,
          child: TextField(
            controller: controller,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelText: text,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(bottom: 12),
              labelStyle: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget Lit() {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.w, top: 2.w),
      child: const Divider(
        thickness: 2,
        color: Color(0xFFE6E6E6),
        height: 1,
      ),
    );
  }
}
