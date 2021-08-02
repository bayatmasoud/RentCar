import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:istanbul_rent_car/Presentation/Cards/SuggestionCard.dart';
import 'package:istanbul_rent_car/Presentation/pages/Home/packages/HomeScreenTop.dart';
import 'package:istanbul_rent_car/Presentation/pages/packages/BottomFilter/FilterCar.dart';
import 'package:istanbul_rent_car/Presentation/pages/packages/SideSlider/SideSlider.dart';

class CarMapFinder extends StatefulWidget {
  //@override
  // State<CarMapFinder> createState() => MapSampleState();
  final Function triggerAnimation;
  CarMapFinder({@required this.triggerAnimation});

  @override
  MapSampleState createState() => MapSampleState(triggerAnimation: null);
}

class MapSampleState extends State<CarMapFinder> with TickerProviderStateMixin {
  final Function triggerAnimation;
  MapSampleState({@required this.triggerAnimation});

  Animation<Offset> sideBarAnimation;
  AnimationController sideBarAnimationcontroller;
  Animation<double> fadeAnimation;
  Widget bottomSimpleDrawer = FilterCars();

  var sidebarHidden = true;
  @override
  initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId(_lastMapPosition.toString()),
      position: _lastMapPosition,
      infoWindow: InfoWindow(
          title: 'Your CAr rental Agent',
          snippet: '5 Star Rating',
          onTap: () {}),
      icon: BitmapDescriptor.defaultMarker,
    ));
    _zoom = 14.0;
    _goToTheCar(_kLake);
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

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 14.0,
  ); //19.151926040649414);

  MapType _currentMapType = MapType.normal;
  final Set<Marker> _markers = {};
  static const LatLng _center =
      const LatLng(37.43296265331129, -122.08832357078792);
  LatLng _lastMapPosition = _center;
  double _zoom = 14.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
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
                      page: 'map',
                    ),
                    SuggestionCard(),
                    Divider(
                      color: Colors.grey,
                      height: 15.0,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      child: GoogleMap(
                        mapType: _currentMapType,
                        initialCameraPosition: _kGooglePlex,
                        myLocationEnabled: true,
                        markers: _markers,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    ),
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
              ),
              bottomSimpleDrawer,
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _goToTheCar(CameraPosition campo) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(campo));
  }
}
