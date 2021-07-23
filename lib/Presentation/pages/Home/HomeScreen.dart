import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/Cards/CarCard.dart';
import 'package:istanbul_rent_car/Presentation/Cards/SearchBar.dart';
import 'package:istanbul_rent_car/Presentation/Cards/SuggestionCard.dart';
import 'package:istanbul_rent_car/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white24,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(Icons.settings), onPressed: () {}),
                          SearchBarCard(),
                          IconButton(
                              icon: Icon(Icons.add_alert_rounded),
                              onPressed: () {}),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('asset/images/profile.jpg'),
                          )
                        ]),
                  ),
                  SuggestionCard(),
                  CarCard()
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Text('Filter'), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
