import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF231F20),
        appBar: AppBar(
          backgroundColor: Color(0xFFFCE029),
          title: Center(
            child: Text(
              'Bello Globo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('data/images/bg.png'),
          ),
        ),
      ),
    ),
  );
}
