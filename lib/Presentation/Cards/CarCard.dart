import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/CheckResolution.dart';
import 'package:istanbul_rent_car/Models/CarCardModel.dart';
import 'package:istanbul_rent_car/Router.dart';

class CarCard extends StatefulWidget {
  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.74,
        width: MediaQuery.of(context).size.width * 0.9,
        child: GridView.count(
          crossAxisCount: ResolutionCheck().checkResulation(context) ? 3 : 1,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 10,
          childAspectRatio: ResolutionCheck().checkResulation(context)
              ? MediaQuery.of(context).size.width / 1200
              : MediaQuery.of(context).size.width / 390,
          // ResolutionCheck().checkResulation(context) ? 0.5 : 1.05,
          children: List.generate(carCardModel.length, (index) {
            return Container(
              height: 150,
              child: CarCarDecorated(
                carModel: carCardModel[index],
              ),
            );
          }),
        )
        // ListView.builder(
        //   scrollDirection: Axis.vertical,
        //   shrinkWrap: true,
        //   itemCount: carCardModel.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return CarCarDecorated(carModel: carCardModel[index]);
        //   },
        // ),
        );
  }
}

class CarCarDecorated extends StatelessWidget {
  final CarCardModel carModel;
  const CarCarDecorated({@required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.9,
      // height: ResolutionCheck().checkResulation(context)
      //     ? MediaQuery.of(context).size.height * 0.1
      //     : MediaQuery.of(context).size.height * 0.1,
      // margin: EdgeInsets.only(left: 5, top: 1.0, right: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Container(
        //color: Color(0xFFAACC),
        //   height: 220,
        // width: MediaQuery.of(context).size.width * 0.5,
        // height: MediaQuery.of(context).size.width * 0.30,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4,
          child: Column(
            children: [
              Container(
                // width: ResolutionCheck().checkResulation(context)
                //     ? MediaQuery.of(context).size.width * 0.90
                //     : MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            carModel.carCardTitle,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: ResolutionCheck().checkResulation(context)
                                  ? 170
                                  : 170,
                              width: ResolutionCheck().checkResulation(context)
                                  ? MediaQuery.of(context).size.width * 0.25
                                  : MediaQuery.of(context).size.width * 0.70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  image: DecorationImage(
                                      image: carModel.carImage.image,
                                      fit: BoxFit.contain)),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15.0, bottom: 3.0),
                          height: 50,
                          width: 70,
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
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                // width: ResolutionCheck().checkResulation(context)
                //     ? MediaQuery.of(context).size.width * 0.90
                //     : MediaQuery.of(context).size.width * 0.90,
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
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
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      // padding: EdgeInsets.only(bottom: 5.0),
                      child: Row(
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
                                PageRoutator().routePage('carDetail', context,
                                    index: carModel.id);
                              },
                              child: Text('Detail')),
                          TextButton(
                              style: TextButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero),
                              onPressed: () {
                                PageRoutator().routePage('/', context);
                              },
                              child: Text('Deal')),
                        ],
                      ),
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
