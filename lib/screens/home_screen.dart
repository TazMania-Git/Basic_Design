import 'package:designs_practice/widgets/background.dart';
import 'package:designs_practice/widgets/custom_bottom_navigation.dart';
import 'package:designs_practice/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Stack(children: [Background(), _HomeBody()]),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [PageTitle()],
    );
  }
}
