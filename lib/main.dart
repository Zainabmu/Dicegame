import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.green,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
      int leftDice = 1;
    int rightDice = 1;
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                   rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
