import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp2Screen extends StatefulWidget {
  const DiceApp2Screen({super.key});

  @override
  State<DiceApp2Screen> createState() => _DiceApp2ScreenState();
}

class _DiceApp2ScreenState extends State<DiceApp2Screen> {
  int random1 = 1;
  int random2 = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final Random random = Random();
        random1 = random.nextInt(6) + 1;
        random2 = random.nextInt(6) + 1;
        setState(() {});
      },
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Dice Game")),
          ),
          backgroundColor: Color.fromARGB(255, 184, 180, 179),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/dice$random1.png',
                    height: 200,
                    width: 150,
                  ),
                  Image.asset(
                    'images/dice$random2.png',
                    height: 150,
                    width: 150,
                  ),
                ],
              ),
              Text(
                'LetsRoll!!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
