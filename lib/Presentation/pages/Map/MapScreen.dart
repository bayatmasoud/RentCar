import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CarMapFinder extends StatefulWidget {
  @override
  State<CarMapFinder> createState() => MapSampleState();
}

class MapSampleState extends State<CarMapFinder> {
  @override
  initState() {
    super.initState();
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
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
    return new Scaffold(
      body: SafeArea(
        child: Stack(children: [
          GoogleMap(
            mapType: _currentMapType,
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            markers: _markers,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                color: Colors.grey,
              )
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.map,
                      color: Colors.blueAccent,
                      size: 35.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _currentMapType = _currentMapType == MapType.normal
                            ? MapType.satellite
                            : MapType.normal;
                      });
                    }),
                IconButton(
                    icon: Icon(
                      Icons.electric_car,
                      color: Colors.red,
                      size: 35.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _currentMapType = _currentMapType == MapType.normal
                            ? MapType.satellite
                            : MapType.normal;
                      });
                    }),
                IconButton(
                    icon: Icon(
                      Icons.car_rental,
                      color: Colors.green,
                      size: 35.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _currentMapType = _currentMapType == MapType.normal
                            ? MapType.satellite
                            : MapType.normal;
                      });
                    }),
                IconButton(
                    icon: Icon(
                      Icons.recommend,
                      color: Colors.brown,
                      size: 35.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _currentMapType = _currentMapType == MapType.normal
                            ? MapType.satellite
                            : MapType.normal;
                      });
                    }),
                IconButton(
                    icon: Icon(
                      Icons.location_pin,
                      color: Colors.deepPurpleAccent,
                      size: 35.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _zoom = _zoom == 14.0 ? 30.0 : 14.0;
                      });
                      _goToTheCar(CameraPosition(
                          target: _lastMapPosition, zoom: _zoom));
                      print(_zoom);
                    }),
                IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 35.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          )
        ]),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: Colors.red,
      //   onPressed: () {
      //     Navigator.pop(context);
      //   }, //_goToTheLake,
      //   label: Text('Close!'),
      //   icon: Icon(Icons.close),
      // ),
    );
  }

  Future<void> _goToTheCar(CameraPosition campo) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(campo));
  }
}
