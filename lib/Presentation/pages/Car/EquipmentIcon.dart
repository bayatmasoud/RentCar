import 'package:flutter/material.dart';

class EquipmentIcon extends StatelessWidget {
  final String eqIcon;
  final String eqText;

  EquipmentIcon({@required this.eqIcon, @required this.eqText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 30,
          child: Image.asset(
            '$eqIcon',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text('$eqText')
      ],
    );
  }
}
