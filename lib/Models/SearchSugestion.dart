import 'package:flutter/material.dart';

class Suggestion {
  final String sugText;
  final String url;
  final String id;
  final Image sugImage;

  Suggestion(this.url, this.id,
      {@required this.sugText, @required this.sugImage});
}

var suggestionlinkes = [
  Suggestion('', '',
      sugText: 'Cheapest',
      sugImage: Image.asset(
        'asset/images/money-bag.png',
        height: 30,
        width: 30,
      )),
  Suggestion('', '',
      sugText: 'Recommanded',
      sugImage: Image.asset(
        'asset/images/recommendation.png',
        height: 30,
        width: 30,
      )),
  Suggestion('', '',
      sugText: 'Nearest',
      sugImage: Image.asset(
        'asset/images/map-pointer.png',
        height: 30,
        width: 30,
      )),
  Suggestion('', '',
      sugText: 'Electrical',
      sugImage: Image.asset(
        'asset/images/electric-car.png',
        height: 30,
        width: 30,
      )),
  Suggestion('', '',
      sugText: 'Luxury',
      sugImage: Image.asset(
        'asset/images/value.png',
        height: 30,
        width: 30,
      )),
  Suggestion('', '',
      sugText: 'Offers',
      sugImage: Image.asset(
        'asset/images/offer.png',
        height: 30,
        width: 30,
      )),
  Suggestion('', '',
      sugText: 'Sedan',
      sugImage: Image.asset(
        'asset/images/sedan1.png',
        height: 30,
        width: 30,
      )),
  Suggestion('', '',
      sugText: 'CrossOver',
      sugImage: Image.asset(
        'asset/images/crossover.png',
        height: 30,
        width: 30,
      )),
];
