import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [Background(), MainContent()],
    ));
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "11°",
            style: textStyle,
          ),
          Text(
            "Miércoles",
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down,size: 100,color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff51c1dc),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}
