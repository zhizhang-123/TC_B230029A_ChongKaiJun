import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.red,
        ),
        body: AskPage(),
      ),
    ),
  );
}

class AskPage extends StatefulWidget {
  const AskPage({Key? key}) : super(key: key);

  @override
  State<AskPage> createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  int midball = 1;
  int ballNumber = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                randomize();
              });
              print(ballNumber);
            },
            child: Image.asset(
              'images/ball$midball.png',
            ),
          ),
        ),
      ),
          ],
      ),
    );
  }

  void randomize() {
    midball = Random().nextInt(5) +1;
    ballNumber = midball;
  }
}
