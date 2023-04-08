import 'dart:math';

import 'package:flutter/material.dart';

class ColorPallet extends StatefulWidget {
  const ColorPallet({super.key});

  @override
  State<ColorPallet> createState() => _ColorPalletState();
}

class _ColorPalletState extends State<ColorPallet> {
  int i = 0;
  int c1 = 0;
  int c2 = 0;
  int c3 = 0;
  int c4 = 0;
  int c5 = 0;
  int c6 = 0;

  List color = [
    Colors.red,
    Colors.amberAccent,
    Colors.black12,
    Colors.cyan,
    Colors.lightBlueAccent,
    Colors.teal,
    Colors.yellowAccent,
    Colors.orange,
    Colors.indigo,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Color Pallet"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  color: color[c1],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  color: color[c2],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(color: color[c3]),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(color: color[c4]),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(color: color[c5]),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  color: color[c6],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Random random1 = Random();
                  Random random2 = Random();
                  Random random3 = Random();
                  Random random4 = Random();
                  Random random5 = Random();
                  Random random6 = Random();
                  setState(() {
                    c1 = random1.nextInt(9);
                    c2 = random2.nextInt(9);
                    c3 = random3.nextInt(9);
                    c4 = random4.nextInt(9);
                    c5 = random5.nextInt(9);
                    c6 = random6.nextInt(9);
                  });
                },
                child: Text("Generate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
