import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF282a36),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('data/images/profilePic.png'),
                foregroundColor: Color(0xFFf8f8f2),
              ),
              Text(
                'mrunalnshah',
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 35.0,
                  color: Color(0xFFbd93f9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ENGINEER',
                style: TextStyle(
                  fontFamily: 'Iceberg',
                  fontSize: 20.0,
                  color: Color(0xFFff5555),
                  fontWeight: FontWeight.w300,
                  letterSpacing: 3.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Color(0xFFf8f8f2),
                ),
              ),
              // Insted of Container, we used Card ; But not ListTitle
              Card(
                color: Color(0xFFf8f8f2),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(39.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email_sharp,
                        color: Color(0xFF282a36),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'mrunalnshah7@gmail.com',
                        style: TextStyle(
                          color: Color(0xFFff79c6),
                          fontFamily: 'Iceberg',
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Insted of Container, we used Card and ListTitle
              Card(
                color: Color(0xFFf8f8f2),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFF282a36),
                    ),
                    title: Text(
                      '+91 8488832883',
                      style: TextStyle(
                        color: Color(0xFFff79c6),
                        fontFamily: 'Iceberg',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
