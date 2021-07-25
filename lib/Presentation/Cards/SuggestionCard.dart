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
                    return Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0.1), blurRadius: 0.05)
                            ]),
                        child: Container(
                          width: 140,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              suggestionlinkes[index].sugImage,
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18.0),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 0.5),
                                            blurRadius: 3)
                                      ]),
                                  child: Text(
                                      '${suggestionlinkes[index].sugText}'))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
