import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Models/CarCardModel.dart';
import 'package:istanbul_rent_car/Presentation/pages/Car/CarScreen.dart';

class CarCard extends StatefulWidget {
  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.74,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: carCardModel.length,
        itemBuilder: (BuildContext context, int index) {
          return CarCarDecorated(carModel: carCardModel[index]);
        },
      ),
    );
  }
}

class CarCarDecorated extends StatelessWidget {
  final CarCardModel carModel;
  const CarCarDecorated({@required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          elevation: 8,
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
                                  image: carModel.carImage.image,
                                  fit: BoxFit.contain)),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.0, bottom: 3.0),
                          height: 50,
                          width: 50,
                          // padding:
                          //     EdgeInsets.only(left: 5.0, bottom: 8.0),
                          child: ClipRRect(
                            child: carModel.brandImage,
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
                            carModel.carCardTitle,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          carModel.subtitle,
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.normal,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          child: ListView.builder(
                              itemCount: carModel.carEquipmentCarCard.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    carModel.carEquipmentCarCard[index],
                                  ],
                                );
                              }),
                        ),
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
                          '${carModel.detail}',
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
                          size: 22,
                        ),
                        Icon(
                          Icons.share_outlined,
                          size: 22,
                        ),
                        Icon(
                          Icons.location_on,
                          size: 22,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CarScreen(carId: carModel.id)),
                              );
                            },
                            child: Text('Detail')),
                        TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CarScreen(carId: carModel.id)),
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
    );
  }
}
