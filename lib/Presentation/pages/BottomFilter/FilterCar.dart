import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:istanbul_rent_car/Models/CarBeandModel.dart';
import 'package:istanbul_rent_car/Models/ChipsFilterChois.dart';
import 'package:simple_drawer/simple_drawer.dart';

class FilterCars extends StatelessWidget {
  const FilterCars({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDrawer(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.60,
        child: FilterTop(),
      ),
      childHeight: MediaQuery.of(context).size.height * 0.6,
      direction: Direction.top,
      id: "top",
    );
  }
}

class FilterTop extends StatefulWidget {
  const FilterTop({
    Key key,
  }) : super(key: key);

  @override
  _FilterTopState createState() => _FilterTopState();
}

class _FilterTopState extends State<FilterTop> {
  List<DropdownMenuItem<String>> _dropDowMenuItem;
  String _firstBrand;

  initState() {
    _dropDowMenuItem = getDropDownItems();
    _firstBrand = _dropDowMenuItem[0].value;
    print(_firstBrand);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 5.0),
        width: MediaQuery.of(context).size.width * 0.9,
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18.0),
                            bottomRight: Radius.circular(18.0))),
                    child: Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Brand :'),
                          DropdownButton(
                            items: _dropDowMenuItem,
                            value: _firstBrand,
                            onChanged: (value) {
                              setState(() {
                                _firstBrand = value;
                                print(_firstBrand);
                              });
                            },
                          ),
                          Text('Model :'),
                          DropdownButton(
                            items: _dropDowMenuItem,
                            value: _firstBrand,
                            onChanged: (value) {
                              setState(() {
                                _firstBrand = value;
                                print(_firstBrand);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18.0),
                            bottomLeft: Radius.circular(18.0))),
                    child: Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Price :'),
                          Expanded(child: TextField()),
                          Text('To :'),
                          Expanded(child: TextField()),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18.0),
                            bottomRight: Radius.circular(18.0))),
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Car Exibitions :'),
                          Expanded(
                            child: DropdownButton(
                              items: _dropDowMenuItem,
                              value: _firstBrand,
                              onChanged: (value) {
                                setState(() {
                                  _firstBrand = value;
                                  print(_firstBrand);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18.0),
                            bottomLeft: Radius.circular(18.0))),
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        ChipsChoice<String>.multiple(
                          wrapped: true,
                          value: tags,
                          onChanged: (val) => setState(() => tags = val),
                          choiceItems: C2Choice.listFrom<String, String>(
                            source: options,
                            value: (i, v) => v,
                            label: (i, v) => v,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
