import 'package:designs_practice/screens/basic_screen.dart';
import 'package:designs_practice/screens/home_screen.dart';
import 'package:designs_practice/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_screen': (_) => BasicScreen(),
        'scroll_design': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
      ),
    );
  }
}
