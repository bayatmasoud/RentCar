import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Models/Equipment.dart';
import 'EquipmentIcon.dart';

class Equipment extends StatelessWidget {
  final CarEquipment carEq;
  const Equipment({@required this.carEq});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Tooltip(
            message: 'Car Doors',
            child: EquipmentIcon(
              eqIcon: 'asset/images/doors.png',
              eqText: '${carEq.door}',
            )),
        SizedBox(
          width: 20,
        ),
        EquipmentIcon(
          eqIcon: 'asset/images/dashboard.png',
          eqText: '${carEq.kiloometer}',
        ),
        SizedBox(
          width: 20,
        ),
        EquipmentIcon(
          eqIcon: 'asset/images/gas-station.png',
          eqText: '${carEq.gazoline}',
        ),
        SizedBox(
          width: 20,
        ),
        EquipmentIcon(
          eqIcon: 'asset/images/gearshift.png',
          eqText: '${carEq.gearshift}',
        ),
        SizedBox(
          width: 20,
        ),
        EquipmentIcon(
          eqIcon: 'asset/images/air-conditioner.png',
          eqText: '${carEq.airCondition}',
        )
      ],
    );
  }
}
