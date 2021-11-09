// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/landscapemexico.jpg')),
            Title(),
            ButtonSelection(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                  "Non commodo ad consectetur nisi incididunt do irure exercitation sint elit cupidatat. Nulla culpa aute excepteur dolor labore. Cupidatat reprehenderit pariatur occaecat id. Excepteur nulla commodo laboris ea dolore laboris quis sunt enim consectetur ex ex excepteur. Ullamco adipisicing dolor non officia nisi reprehenderit ullamco tempor incididunt."),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CustomButton(
            icon: Icons.call,
            text: "CALL",
          ),
          CustomButton(
            icon: Icons.near_me,
            text: "ROUTE",
          ),
          CustomButton(
            icon: Icons.share,
            text: "SHARE",
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 15),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Playa del Carmen",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Hotel Azul Fives",
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("41"),
        ],
      ),
    );
  }
}
