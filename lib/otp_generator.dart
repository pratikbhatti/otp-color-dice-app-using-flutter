import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtpGenerator extends StatefulWidget {
  const OtpGenerator({super.key});

  @override
  State<OtpGenerator> createState() => _OtpGeneratorState();
}

class _OtpGeneratorState extends State<OtpGenerator> {
  late final text_controller = TextEditingController();
  String l = "";
  int len = 0;
  int otp1 = 0;
  bool check = false;
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OTP Generator",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFF6DB87),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: text_controller,
                    style: TextStyle(color: Color(0xFFFCF6Bf)),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     Text()
                    //     return 'Please enter some number';
                    //   }
                    //   else if (value!.length < 4 && value.length > 6) {
                    //     Text("'Please enter number between 4 to 6'");
                    //   }
                    //   // else if () {

                    //   // }

                    //   return null;
                    // },
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFCF6Bf),
                        ),
                      ), // labelStyle: TextStyle(
                      //   color: Color(0xFFFCF6BA),
                      // ),
                      // labelText: "Name",
                      hintText: 'Enter OTP Length',
                      hintStyle: TextStyle(
                        color: Color(0xFFFCF6BA),
                      ),

                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Color(0xFFFCF6BA),
                      //   ),
                      // ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    print(text_controller);
                    if (text_controller.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please fill OTP Length",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 25.0);
                    } else if (text_controller.text == "4" ||
                        text_controller.text == "5" ||
                        text_controller.text == "6") {
                      l = text_controller.text;
                      len = int.parse(l);
                      var ot1 = Random();

                      setState(() {
                        check = !check;
                        otp1 = ot1.nextInt(999999999 - 100000000);
                      });
                    } else {
                      Fluttertoast.showToast(
                          msg: "Please Fill Otp Length between 4 to 6",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 25.0);
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Generate OTP",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFE8B8), Color(0xFFF6DB87)],
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Visibility(
                    visible: check,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "${(otp1 == 0) ? otp1 : otp1.toString().substring(0, len)}",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 20),
                      ),
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Color(0xFFFFE8B8), Color(0xFFF6DB87)],
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      otp1 = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Reset",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFE8B8), Color(0xFFF6DB87)],
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
