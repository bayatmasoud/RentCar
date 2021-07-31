import 'package:flutter/material.dart';

class Suggestion {
  final String sugText;
  final String url;
  final String id;
  final String sugImage;

  Suggestion(this.url, this.id,
      {@required this.sugText, @required this.sugImage});
}

var suggestionlinkes = [
  Suggestion(
    '',
    '',
    sugText: 'Cheapest',
    sugImage: 'asset/images/money-bag.png',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Recommanded',
    sugImage: 'asset/images/recommendation.png',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Nearest',
    sugImage: 'asset/images/map-pointer.png',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Electrical',
    sugImage: 'asset/images/electric-car.png',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Luxury',
    sugImage: 'asset/images/value.png',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Offers',
    sugImage: 'asset/images/offer.png',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Sedan',
    sugImage: 'asset/images/sedan1.png',
  ),
  Suggestion(
    '',
    '',
    sugText: 'CrossOver',
    sugImage: 'asset/images/crossover.png',
  ),
];
