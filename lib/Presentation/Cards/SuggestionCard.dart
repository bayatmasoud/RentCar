import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Tooltip(
                message: 'Cheapest Cars',
                child: Image.asset(
                  'asset/images/Cheapest.png',
                  height: 40,
                  width: 40,
                )
                // IconButton(icon: Icon(Icons.attach_money), onPressed: () {}),
                ),
            Tooltip(
                message: 'Recommanded Car',
                child: Image.asset(
                  'asset/images/recommanded.png',
                  height: 50,
                  width: 50,
                )),
            Tooltip(
              message: 'Nearest Car',
              child: IconButton(
                icon: Icon(
                  Icons.gps_fixed,
                  size: 40,
                ),
                onPressed: () {},
                hoverColor: Colors.red,
              ),
            ),
            Tooltip(
                message: 'Electric Car',
                child: Image.asset(
                  'asset/images/electric.png',
                  height: 40,
                  width: 40,
                )),
            Tooltip(
                message: 'Luxury Cars',
                child: Image.asset(
                  'asset/images/luxury.png',
                  height: 40,
                  width: 40,
                )),
          ],
        ),
      ),
    );
  }
}
