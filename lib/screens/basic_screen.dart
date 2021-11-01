// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/landscapemexico.jpg')),
            Row(
              children: [
                Text("Playa del Carmen"),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text("41"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
