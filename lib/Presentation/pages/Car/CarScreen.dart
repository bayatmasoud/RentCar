import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:istanbul_rent_car/Models/Equipment.dart';
import 'CarScreenSlider.dart';
import 'EquipmentBoxes.dart';

class CarScreen extends StatefulWidget {
  @override
  _CarScreenState createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  final _carEq = carEquipments;
  @override
  Widget build(BuildContext context) {
    int perday = (_carEq[0].perday).ceil();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarScreenSlider(carEq: _carEq[0]),
              Container(
                child: Card(
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(54),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                    )
                                  ]),
                              child: Text(
                                "\$$perday Per day",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextButton(
                                onPressed: () {}, child: Text('Agent Policy')),
                            TextButton(
                                onPressed: () {}, child: Text('Book Now'))
                          ],
                        ),
                        Equipments(carEq: _carEq[0])
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
