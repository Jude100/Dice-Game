// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          // ignore: prefer_const_constructors
          title: Center(
            child: Text('Dice Gmae'),
          ),
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdice = 1;
  int rightdice = 1;
  void chngdie() {
    setState(
      () {
        leftdice = Random().nextInt(6) + 1;
        rightdice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  chngdie();
                },
                child: Image.asset('images/dice$leftdice.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  chngdie();
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
