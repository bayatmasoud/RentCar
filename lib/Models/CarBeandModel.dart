import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandDropDown {
  final String id;
  final List<DropdownMenuItem<String>> brandOption;
  BrandDropDown({@required this.id, @required this.brandOption});
}

List branList = ['Audi', 'Benz', 'Reno', 'Golf', 'Saipa'];

List<DropdownMenuItem<String>> getDropDownItems() {
  List<DropdownMenuItem<String>> items = [];
  for (String brand in branList) {
    items.add(DropdownMenuItem(
      value: brand,
      child: Text(brand),
    ));
  }
  return items;
}
