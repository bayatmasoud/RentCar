import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Models/SearchSugestion.dart';

class SuggestionCard extends StatelessWidget {
  //final Suggestion _suggestion;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: suggestionlinkes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.brown,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 120.0,
                                        offset: Offset(0, 10.0))
                                  ]),
                              child: Text('${suggestionlinkes[index].sugText}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
          // TextButton(
          //     style: TextButton.styleFrom(
          //         minimumSize: Size.zero, padding: EdgeInsets.zero),
          //     onPressed: () {},
          //     child: Text('Cheapest')),
          // TextButton(
          //     style: TextButton.styleFrom(
          //         minimumSize: Size.zero, padding: EdgeInsets.zero),
          //     onPressed: () {},
          //     child: Text('Recommanded')),
          // TextButton(
          //     style: TextButton.styleFrom(
          //         minimumSize: Size.zero, padding: EdgeInsets.zero),
          //     onPressed: () {},
          //     child: Text('Nearest')),
          // TextButton(
          //     style: TextButton.styleFrom(
          //         minimumSize: Size.zero, padding: EdgeInsets.zero),
          //     onPressed: () {},
          //     child: Text('Electric')),
          // TextButton(
          //     style: TextButton.styleFrom(
          //         minimumSize: Size.zero, padding: EdgeInsets.zero),
          //     onPressed: () {},
          //     child: Text('Luxury')),
        ],
      ),
    );
  }
}
