import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFCF0A0A),
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          title: Center(
            child: Text(
              'Ask Me Anything Budddy!',
              style: TextStyle(
                fontFamily: 'Creepster',
                color: Color(0xFFCF0A0A),
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: askMeInterface(),
      ),
    ),
  );
}

class askMeInterface extends StatefulWidget {
  const askMeInterface({super.key});

  @override
  State<askMeInterface> createState() => _askMeInterfaceState();
}

class _askMeInterfaceState extends State<askMeInterface> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
