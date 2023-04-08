import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int i = 0;
  int j = 0;
  int x = 0, y = 0;
  List image = [
    "assets/image/1.png",
    "assets/image/2.png",
    "assets/image/3.png",
    "assets/image/4.png",
    "assets/image/5.png",
    "assets/image/6.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "Total Amount ${x + y}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 8, right: 8),
              child: Row(
                children: [
                  Image.asset(
                    "${image[i]}",
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.2,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.2,
                    "${image[j]}",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: InkWell(
                onTap: () {
                  Random random1 = Random();
                  Random random2 = Random();
                  x = random1.nextInt(6);
                  y = random2.nextInt(6);

                  setState(() {
                    i = x;
                    j = y;
                    x++;
                    y++;
                    // print("i $i");
                    // print("j $j");
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 11,
                  width: MediaQuery.of(context).size.width / 1.5,
                  alignment: Alignment.center,
                  child: Text(
                    "Role Dice",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 1, 70, 127),
                        width: 5.0,
                        style: BorderStyle.solid),
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
