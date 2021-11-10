import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.blue,
            text: "General",
          ),
          _SingleCard(
            icon: Icons.shop_outlined,
            color: Colors.purple,
            text: "Shopping",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.blue,
            text: "General",
          ),
          _SingleCard(
            icon: Icons.shop_outlined,
            color: Colors.purple,
            text: "Shopping",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.blue,
            text: "General",
          ),
          _SingleCard(
            icon: Icons.shop_outlined,
            color: Colors.purple,
            text: "Shopping",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.blue,
            text: "General",
          ),
          _SingleCard(
            icon: Icons.shop_outlined,
            color: Colors.purple,
            text: "Shopping",
          ),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return CardBackground(
        column: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          child: Icon(icon, size: 35),
          backgroundColor: color,
          radius: 30,
          foregroundColor: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
          ),
        )
      ],
    ));
  }
}

class CardBackground extends StatelessWidget {
  const CardBackground({
    Key? key,
    required this.column,
  }) : super(key: key);

  final Column column;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: column,
          ),
        ),
      ),
    );
  }
}
