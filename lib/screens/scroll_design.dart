import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        Page1(),
        Page2(),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff51c1dc) ,
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: StadiumBorder(),
          ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Bienvenido",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
            )),
      ),
    );
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
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
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
