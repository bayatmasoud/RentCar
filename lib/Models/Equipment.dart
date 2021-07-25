import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CarEquipment {
  final int id;
  final int door;
  final int likes;
  final int persons;
  final int kiloometer;
  final String image;
  final String brand;
  final double perday;
  final bool avalibility;
  final String explain;
  final String address;
  final bool dreiver;
  final int gazoline;
  final String gearshift;
  final String airCondition;
  final List include;
  CarEquipment({
    @required this.id,
    @required this.door,
    @required this.likes,
    @required this.persons,
    @required this.kiloometer,
    @required this.image,
    @required this.brand,
    @required this.perday,
    @required this.avalibility,
    @required this.explain,
    @required this.address,
    @required this.dreiver,
    @required this.gazoline,
    @required this.gearshift,
    @required this.airCondition,
    @required this.include,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'door': door,
      'likes': likes,
      'persons': persons,
      'kiloometer': kiloometer,
      'image': image,
      'brand': brand,
      'perday': perday,
      'avalibility': avalibility,
      'explain': explain,
      'address': address,
      'dreiver': dreiver,
      'gazoline': gazoline,
      'gearshift': gearshift,
      'airCondition': airCondition,
      'include': include,
    };
  }

  factory CarEquipment.fromMap(Map<String, dynamic> map) {
    return CarEquipment(
      id: map['id'],
      door: map['door'],
      likes: map['likes'],
      persons: map['persons'],
      kiloometer: map['kiloometer'],
      image: map['image'],
      brand: map['brand'],
      perday: map['perday'],
      avalibility: map['avalibility'],
      explain: map['explain'],
      address: map['address'],
      dreiver: map['dreiver'],
      gazoline: map['gazoline'],
      gearshift: map['gearshift'],
      airCondition: map['airCondition'],
      include: List.from(map['include']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CarEquipment.fromJson(String source) =>
      CarEquipment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CarEquipment(id: $id, door: $door, likes: $likes, persons: $persons, kiloometer: $kiloometer, image: $image, brand: $brand, perday: $perday, avalibility: $avalibility, explain: $explain, address: $address, dreiver: $dreiver, gazoline: $gazoline, gearshift: $gearshift, airCondition: $airCondition, include: $include)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarEquipment &&
        other.id == id &&
        other.door == door &&
        other.likes == likes &&
        other.persons == persons &&
        other.kiloometer == kiloometer &&
        other.image == image &&
        other.brand == brand &&
        other.perday == perday &&
        other.avalibility == avalibility &&
        other.explain == explain &&
        other.address == address &&
        other.dreiver == dreiver &&
        other.gazoline == gazoline &&
        other.gearshift == gearshift &&
        other.airCondition == airCondition &&
        listEquals(other.include, include);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        door.hashCode ^
        likes.hashCode ^
        persons.hashCode ^
        kiloometer.hashCode ^
        image.hashCode ^
        brand.hashCode ^
        perday.hashCode ^
        avalibility.hashCode ^
        explain.hashCode ^
        address.hashCode ^
        dreiver.hashCode ^
        gazoline.hashCode ^
        gearshift.hashCode ^
        airCondition.hashCode ^
        include.hashCode;
  }
}

var carEquipments = [
  CarEquipment(
      likes: 120,
      persons: 4,
      kiloometer: 1200,
      door: 4,
      address: 'Turkey/Istabul/Taksim Meydani/Hertz Agent ',
      avalibility: true,
      brand: 'asset/images/hertz.jpg',
      dreiver: false,
      explain: 'This is the best car',
      id: 1,
      image: 'asset/images/5.jpg',
      perday: 120.0,
      gazoline: 70,
      gearshift: 'Auto',
      airCondition: 'Auto',
      include: [
        'Free cancelation',
        'Collision Damage Waiver',
        'Third Party Liability (TPL)',
        'Unlimited Mileage',
        'Taxes',
        'Airport Surcharge'
      ]),
];
