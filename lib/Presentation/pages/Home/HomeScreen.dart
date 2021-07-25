import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/Cards/CarCard.dart';
import 'package:istanbul_rent_car/Presentation/Cards/SuggestionCard.dart';
import 'package:istanbul_rent_car/Presentation/pages/SideSlider/SideSlider.dart';
import 'package:istanbul_rent_car/constants.dart';

import 'HomeScreenTop.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageView(),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.filter_list,
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

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

  // @override
  // void initState() {
  //   super.initState();
  //   sideBarAnimationcontroller = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 250),
  //   );
  //   sideBarAnimation = Tween<Offset>(
  //     begin: Offset(-1, 0),
  //     end: Offset(0, 0),
  //   ).animate(CurvedAnimation(
  //       parent: sideBarAnimationcontroller, curve: Curves.easeInOut));
  // }

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
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeScreenTop(
                    triggerAnimation: () {
                      setState(() {
                        sidebarHidden = !sidebarHidden;
                      });
                      sideBarAnimationcontroller.forward();
                    },
                  ),
                  SuggestionCard(),
                  Divider(
                    color: Colors.grey,
                  ),
                  CarCard(),
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
