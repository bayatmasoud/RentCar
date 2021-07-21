import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Models/Equipment.dart';
import 'Equipment.dart';
import 'EquipmentDecorator.dart';
import 'WhatsInclude.dart';

class Equipments extends StatelessWidget {
  final CarEquipment carEq;
  const Equipments({
    @required this.carEq,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Equipment(carEq: carEq),
          SizedBox(height: 15.0),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  BoxDecorator(
                    reqText: carEq.explain,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  BoxDecorator(
                    reqText: carEquipments[0].address,
                    favIcon: Icon(Icons.location_on),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Whats Include :',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          WhatsInclude(includes: carEq.include),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
