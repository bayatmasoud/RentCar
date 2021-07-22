import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Models/Equipment.dart';

class CarScreenSlider extends StatelessWidget {
  final CarEquipment carEq;
  const CarScreenSlider({@required this.carEq});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(carEq.image), fit: BoxFit.fill)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 50,
                  width: 100,
                  child: Image.asset(
                    carEq.brand,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 2.0, right: 5.0),
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Icon(Icons.close),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20.0),
                    Icon(
                      Icons.ios_share,
                      size: 30,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
