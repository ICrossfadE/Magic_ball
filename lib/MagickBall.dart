import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MagickBall extends StatefulWidget {
  const MagickBall({super.key});

  @override
  State<MagickBall> createState() => _MagickBallState();
}

class _MagickBallState extends State<MagickBall> {
  var answerIndex = 1;

  void _randomAnswer() {
    setState(() {
      answerIndex = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Ask me Anything'),
          ),
        ),
        body: SafeArea(
          child: _interactive(context),
        ),
      ),
    );
  }

  Widget _interactive(BuildContext interactiveContext) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextButton(
            onPressed: () {
              _randomAnswer();
            },
            child: Image.asset('assets/ball$answerIndex.png'),
          ),
        ),
      ),
    );
  }
}
