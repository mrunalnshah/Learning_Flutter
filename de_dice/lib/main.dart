import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF6AB187),
        appBar: AppBar(
          backgroundColor: Color(0xFF20948B),
          title: Center(
            child: Text(
              'De Dice',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w100,
                fontFamily: 'Rubik Glitch',
              ),
            ),
          ),
        ),
        body: DeDicePage(),
      ),
    ),
  );
}

class DeDicePage extends StatefulWidget {
  const DeDicePage({super.key});

  @override
  State<DeDicePage> createState() => _DeDicePageState();
}

class _DeDicePageState extends State<DeDicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;

  void randomNumberGenerator() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                randomNumberGenerator();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randomNumberGenerator();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
