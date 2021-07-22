import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Presentation/pages/Car/CarScreen.dart';

class CarCard extends StatefulWidget {
  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Container(
                                height: 165,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ClipRRect(
                                  child: Image.asset('asset/images/5.jpg',
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                padding:
                                    EdgeInsets.only(left: 5.0, bottom: 8.0),
                                child: ClipRRect(
                                  child: Image.asset('asset/images/hertz.jpg',
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Text(
                              "Hynda I20",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Best Car in the World',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                                Icon(Icons.airplanemode_inactive),
                                Icon(Icons.airline_seat_recline_normal),
                                Icon(Icons.access_time_outlined),
                                Icon(Icons.accessible),
                                Icon(Icons.add_location_alt),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Detail',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Its a text for testing What happend here',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[700],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 21.0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarScreen()),
                );
              },
              child: Text('Deal')),
        )
      ],
    );
  }
}
