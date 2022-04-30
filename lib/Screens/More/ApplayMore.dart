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
      body: Padding(
        padding: EdgeInsets.only(top: 5.h, left: 5.w, right: 5.w),
        child: Column(
          children: [
            item("Name", "", _name),
            item("Channel URL", "", _Address),
            item("Contact no.", "", _contact),
            item("Description", "", _contact),
            Lit(),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30)), // background// foreground
              ),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xFF25C06D),
                      Color(0xFF25C06D),
                    ]),
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 5.5.h,
                  width: 51.w,
                  padding: EdgeInsets.all(1.5.h),
                  child: const Text(
                    "SUBMIT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        // fontFamily: "GothamPro",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextEditingController _name = TextEditingController();
  TextEditingController _Address = TextEditingController();
  TextEditingController _contact = TextEditingController();

  Widget item(String name, String text, TextEditingController controller) {
    return TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter your username',
        labelStyle: TextStyle(color: Colors.white)
      ),
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
