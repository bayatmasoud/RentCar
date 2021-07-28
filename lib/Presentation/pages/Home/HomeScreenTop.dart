import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/Cards/SearchBar.dart';
import 'package:simple_drawer/simple_drawer.dart';

class HomeScreenTop extends StatelessWidget {
  final Function triggerAnimation;
  HomeScreenTop({@required this.triggerAnimation});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {}, //triggerAnimation,
        ),
        SearchBarCard(),
        IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              SimpleDrawer.activate("top");
            }),
        GestureDetector(
          onTap: triggerAnimation,
          child: CircleAvatar(
            backgroundImage: AssetImage('asset/images/profile.jpg'),
          ),
        )
      ]),
    );
  }
}
