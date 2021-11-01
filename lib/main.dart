import 'package:designs_practice/screens/basic_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_screen',
      routes: {
        'basic_screen': (_) => BasicScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
      ),
    );
  }
}
