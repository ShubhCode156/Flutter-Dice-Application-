import 'package:diceapp/diceapp2screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp2());
}

class DiceApp2 extends StatelessWidget {
  const DiceApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiceApp2Screen(),
    );
  }
}
