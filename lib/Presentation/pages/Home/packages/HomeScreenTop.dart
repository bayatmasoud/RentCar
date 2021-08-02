import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Router.dart';
import 'package:simple_drawer/simple_drawer.dart';
import '../../../../constants.dart';

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
                ? PageRoutator().routePage('mapPage', context)
                : PageRoutator().routePage("/", context);
          }, //triggerAnimation,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: pageShadowColor,
                    offset: Offset(0, 4),
                    blurRadius: 4.0,
                  )
                ]),
            child: TextField(
              cursorColor: pagePrimaryLabelColor,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: pagePrimaryLabelColor,
                  size: 20.0,
                ),
                border: InputBorder.none,
                hintText: "Search City",
              ),
              style: TextStyle(
                fontSize: 13.0,
                color: pagePrimaryLabelColor,
                decoration: TextDecoration.none,
              ),
              onChanged: (newText) {
                print(newText);
              },
            ),
          ),
        ),
        SizedBox(width: 10.0),
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
