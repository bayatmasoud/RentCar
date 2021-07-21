import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.95,
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
              child:
                  IconButton(icon: Icon(Icons.attach_money), onPressed: () {}),
            ),
            Tooltip(
              message: 'Recommanded Car',
              child: IconButton(
                icon: Icon(
                  Icons.recommend,
                  color: Colors.amber[800],
                ),
                onPressed: () {},
              ),
            ),
            Tooltip(
              message: 'Nearest Car',
              child: IconButton(
                icon: Icon(Icons.gps_fixed),
                onPressed: () {},
                hoverColor: Colors.red,
              ),
            ),
            Tooltip(
                message: 'Electric Car',
                child: IconButton(
                    icon: Icon(Icons.electric_car_sharp), onPressed: () {})),
            Tooltip(
              message: 'This Cars Has Insurance',
              child: IconButton(
                  icon: Icon(Icons.account_balance_wallet_rounded),
                  onPressed: () {}),
            ),
            Tooltip(
                message: '5 Star Security',
                child:
                    IconButton(icon: Icon(Icons.security), onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
