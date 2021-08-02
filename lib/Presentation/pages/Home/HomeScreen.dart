import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/pages/packages/BottomFilter/FilterCar.dart';

import 'packages/HomeScreenPageView.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget bottomSimpleDrawer = FilterCars();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          HomePageView(),
          bottomSimpleDrawer,
        ],
      ),
    );
  }
}
