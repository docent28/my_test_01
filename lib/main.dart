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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String milliSecondsText = "";
  GameState gameState = GameState.readyToStart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Align(
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
                    milliSecondsText,
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: GestureDetector(
              onTap: () =>
                  setState(() {
                    switch (gameState) {
                      case GameState.readyToStart:
                        gameState = GameState.waiting;
                        break;
                      case GameState.waiting:
                        gameState = GameState.canBeStopped;
                        break;
                      case GameState.canBeStopped:
                        gameState = GameState.readyToStart;
                        break;
                    }
                  }),
              child: ColoredBox(
                color: Colors.black26,
                child: SizedBox(
                  height: 160,
                  width: 300,
                  child: Center(
                    child: Text(
                      _getButtonText(),
                      style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w400,
                      ),
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

  String _getButtonText() {
    switch (gameState) {
      case GameState.readyToStart:
        return "START";
      case GameState.waiting:
        return "WAIT";
      case GameState.canBeStopped:
        return "STOP";
    }
  }
}

enum GameState { readyToStart, waiting, canBeStopped }
