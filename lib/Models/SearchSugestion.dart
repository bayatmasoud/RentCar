import 'package:flutter/material.dart';

class Suggestion {
  final String sugText;
  final String url;
  final String id;

  Suggestion(this.url, this.id, {@required this.sugText});
}

var suggestionlinkes = [
  Suggestion('', '', sugText: 'Cheapest'),
  Suggestion('', '', sugText: 'Recommanded'),
  Suggestion(
    '',
    '',
    sugText: 'Nearest',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Electrical',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Luxury',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Offers',
  ),
  Suggestion(
    '',
    '',
    sugText: 'Sedan',
  ),
  Suggestion(
    '',
    '',
    sugText: 'CrossOver',
  ),
];
