import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/pages/Car/CarScreen.dart';

class CarCard extends StatefulWidget {
  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 202,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 5, top: 1.0, right: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 3,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Container(
                                margin: EdgeInsets.all(10.0),
                                height: 170,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('asset/images/5.jpg'),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5.0, bottom: 3.0),
                                height: 50,
                                width: 50,
                                // padding:
                                //     EdgeInsets.only(left: 5.0, bottom: 8.0),
                                child: ClipRRect(
                                  child: Image.asset('asset/images/hertz.jpg',
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.52,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Hynda I20",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Best Car in the World',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.person),
                              Icon(Icons.airplanemode_inactive),
                              Icon(Icons.airline_seat_recline_normal),
                              Icon(Icons.access_time_outlined),
                              Icon(Icons.accessible),
                              Icon(Icons.add_location_alt),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Detail',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Row(children: [
                            Flexible(
                              child: Text(
                                'Its a text for testing What happend here kjhasd jka sdkj askd  ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[700],
                                ),
                              ),
                            )
                          ]),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite_border_outlined,
                                size: 28,
                              ),
                              Icon(
                                Icons.share_outlined,
                                size: 28,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CarScreen()),
                                    );
                                  },
                                  child: Text('Detail')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CarScreen()),
                                    );
                                  },
                                  child: Text('Deal')),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
