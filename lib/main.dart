import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.centerRight,
        child: Text(
          "Политехнический колледж городского хозяйства",
          style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
            Shadow(
              color: Colors.green,
              offset: Offset(-50, -50),
              blurRadius: 10,
            ),
            Shadow(
              color: Colors.green,
              offset: Offset(70, 70),
              blurRadius: 15,
            ),
          ]),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
