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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: const [
          Align(
            alignment: Alignment(0, -0.9),
            child: Text(
              "КОЛЛЕДЖ",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ColoredBox(
              color: Colors.black26,
              child: SizedBox(
                height: 160,
                width: 300,
                child: Center(
                  child: Text(
                    "ПКГХ",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: ColoredBox(
              color: Colors.black26,
              child: SizedBox(
                height: 160,
                width: 300,
                child: Center(
                  child: Text(
                    "START",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
