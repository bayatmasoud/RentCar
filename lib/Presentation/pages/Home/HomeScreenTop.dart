import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/Cards/SearchBar.dart';
import 'package:istanbul_rent_car/Presentation/pages/Home/HomeScreen.dart';
import 'package:simple_drawer/simple_drawer.dart';
import 'package:istanbul_rent_car/Presentation/pages/Map/MapScreen.dart';

class HomeScreenTop extends StatelessWidget {
  final Function triggerAnimation;
  final String page;
  HomeScreenTop({@required this.triggerAnimation, @required this.page});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          icon: page == 'home'
              ? Icon(
                  Icons.map_outlined,
                  size: 34.0,
                )
              : Icon(
                  Icons.home,
                  size: 34.0,
                ),
          onPressed: () {
            page == 'home'
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarMapFinder(
                              triggerAnimation: triggerAnimation,
                            )),
                  )
                : Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
          }, //triggerAnimation,
        ),
        SearchBarCard(),
        IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              SimpleDrawer.activate("top");
              print('Filter Pressed');
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
