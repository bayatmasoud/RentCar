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
    return Scaffold(
      body: Column(
        children: [
          CarScreenSlider(carEq: _carEq[0]),
          Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Card(
                    elevation: 4,
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
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(54),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                      )
                                    ]),
                                child: Text(
                                  "\$${_carEq[0].perday} Per day",
                                  style: TextStyle(
                                      color: Colors.deepOrangeAccent[600],
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Agent Policy')),
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
        ],
      ),
    );
  }
}
