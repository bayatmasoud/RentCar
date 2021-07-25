import 'package:flutter/material.dart';

class CarCardModel {
  final String id;
  final Image carImage;
  final String carCardTitle;
  final String subtitle;
  final List<Icon> carEquipmentCarCard;
  final String detail;
  final Image brandImage;

  CarCardModel(
      {@required this.id,
      @required this.carImage,
      @required this.carCardTitle,
      @required this.subtitle,
      @required this.detail,
      @required this.carEquipmentCarCard,
      @required this.brandImage});
}

var carCardModel = [
  CarCardModel(
      id: '0',
      carImage: Image.asset('asset/images/5.jpg'),
      carCardTitle: 'Toyota F5',
      subtitle: 'Some of the best',
      detail: 'Changed the oil in 7000 and the taier is 90%',
      carEquipmentCarCard: [
        Icon(Icons.person),
        Icon(Icons.airplanemode_inactive),
        Icon(Icons.airline_seat_recline_normal),
        Icon(Icons.access_time_outlined),
        Icon(Icons.accessible),
        Icon(Icons.add_location_alt),
      ],
      brandImage: Image.asset('asset/images/hertz.jpg', fit: BoxFit.cover)),
  CarCardModel(
      id: '0',
      carImage: Image.asset('asset/images/4.jpg'),
      carCardTitle: 'Hynda i20',
      subtitle: 'Small and beautifull',
      detail: 'it has Insurance and you can go any were',
      carEquipmentCarCard: [
        Icon(Icons.person),
        Icon(Icons.airplanemode_inactive),
        Icon(Icons.access_time_outlined),
        Icon(Icons.add_location_alt),
      ],
      brandImage: Image.asset('asset/images/tesla.jpg', fit: BoxFit.cover)),
  CarCardModel(
      id: '0',
      carImage: Image.asset('asset/images/3.jpg'),
      carCardTitle: 'Audio 2021',
      subtitle: 'Fast and Security',
      detail: 'Full gazoline and changing all the needs with the children sit ',
      carEquipmentCarCard: [
        Icon(Icons.airplanemode_inactive),
        Icon(Icons.airline_seat_recline_normal),
        Icon(Icons.accessible),
        Icon(Icons.add_location_alt),
      ],
      brandImage: Image.asset('asset/images/Audio.png', fit: BoxFit.cover)),
  CarCardModel(
      id: '0',
      carImage: Image.asset('asset/images/2.jpg'),
      carCardTitle: 'Perid SLX',
      subtitle: 'It\'s just for Iranain people',
      detail:
          'Confortable and simple driving befor you get can test and drive free',
      carEquipmentCarCard: [
        Icon(Icons.person),
        Icon(Icons.airplanemode_inactive),
        Icon(Icons.airline_seat_recline_normal),
        Icon(Icons.access_time_outlined),
        Icon(Icons.accessible),
        Icon(Icons.add_location_alt),
      ],
      brandImage: Image.asset('asset/images/hertz.jpg', fit: BoxFit.cover)),
  CarCardModel(
      id: '0',
      carImage: Image.asset('asset/images/5.jpg'),
      carCardTitle: 'Saipa Vanet',
      subtitle: 'Take more move more',
      detail: 'If you want to have a confort driving and afte a long road',
      carEquipmentCarCard: [
        Icon(Icons.person),
        Icon(Icons.airline_seat_recline_normal),
        Icon(Icons.accessible),
        Icon(Icons.add_location_alt),
      ],
      brandImage: Image.asset('asset/images/hertz.jpg', fit: BoxFit.cover))
];
