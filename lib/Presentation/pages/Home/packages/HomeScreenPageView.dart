import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:istanbul_rent_car/Presentation/Cards/CarCard.dart';
import 'package:istanbul_rent_car/Presentation/Cards/SuggestionCard.dart';
import 'package:istanbul_rent_car/Presentation/pages/packages/SideSlider/SideSlider.dart';

import 'HomeScreenTop.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState(null);
}

class _HomePageViewState extends State<HomePageView>
    with TickerProviderStateMixin {
  Animation<Offset> sideBarAnimation;
  AnimationController sideBarAnimationcontroller;
  Animation<double> fadeAnimation;

  final Function triggerAnimation;
  var sidebarHidden = true;

  _HomePageViewState(this.triggerAnimation);

  @override
  void initState() {
    super.initState();
    sideBarAnimationcontroller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    sideBarAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: sideBarAnimationcontroller,
        curve: Curves.easeInOut,
      ),
    );
    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: sideBarAnimationcontroller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: Stack(
          children: [
            SafeArea(
              bottom: false,
              child: Column(
                children: [
                  HomeScreenTop(
                    triggerAnimation: () {
                      setState(() {
                        sidebarHidden = !sidebarHidden;
                      });
                      sideBarAnimationcontroller.forward();
                    },
                    page: 'home',
                  ),
                  SuggestionCard(),
                  Divider(
                    color: Colors.grey,
                    height: 15.0,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Wrap(children: [CarCard()])),
                ],
              ),
            ),
            IgnorePointer(
              ignoring: sidebarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: GestureDetector(
                      child: Container(
                        color: Color.fromRGBO(36, 38, 41, 0.4),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                      onTap: () {
                        setState(() {
                          sidebarHidden = !sidebarHidden;
                        });
                        sideBarAnimationcontroller.reverse();
                      },
                    ),
                  ),
                  SlideTransition(
                    position: sideBarAnimation,
                    child: SafeArea(
                      child: SideSlider(),
                      bottom: false,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
