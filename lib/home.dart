import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentChar = 7;

  void charChanger() {
    setState(() {
      currentChar = Random().nextInt(7) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 650,
              child: Image.asset(
                'asset/$currentChar.jpeg',
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                charChanger();
              },
              child: const Text(
                'Click Hear',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
