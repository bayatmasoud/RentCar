import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/pages/Home/HomeScreen.dart';

main() {
  runApp(RentCarHome());
}

class RentCarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
