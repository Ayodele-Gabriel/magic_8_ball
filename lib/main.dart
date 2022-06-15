import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MagicBall(),
    ),
  );
}

class MagicBall extends StatelessWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: const Text('Ask Me Anything!'),
      ),
      body: const Eight(),
    );
  }
}

class Eight extends StatefulWidget {
  const Eight({Key? key}) : super(key: key);

  @override
  State<Eight> createState() => _EightState();
}

class _EightState extends State<Eight> {
  int balls = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            balls = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$balls.png'),
      ),
    );
  }
}