import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/constants.dart';

class SearchBarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                color: pageShadowColor,
                offset: Offset(0, 1),
                blurRadius: 1.0,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            cursorColor: pagePrimaryLabelColor,
            decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: pagePrimaryLabelColor,
                size: 20.0,
              ),
              border: InputBorder.none,
              hintText: "Search City",
              hintStyle: kSearchPlaceholderStyle,
            ),
            style: kSearchTextStyle,
            onChanged: (newText) {
              print(newText);
            },
          ),
        ),
      ),
    );
  }
}
