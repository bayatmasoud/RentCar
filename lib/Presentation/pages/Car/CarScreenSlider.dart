import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Models/Equipment.dart';

class CarScreenSlider extends StatelessWidget {
  final CarEquipment carEq;
  const CarScreenSlider({@required this.carEq});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 12),
                          blurRadius: 16.0,
                        )
                      ]),
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset(
                    carEq.image,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(top: 10, left: 10),
                  height: 70,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        carEq.brand,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40.0),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 20.0)
                            ]),
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
