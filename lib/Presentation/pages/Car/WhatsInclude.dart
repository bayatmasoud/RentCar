import 'package:flutter/material.dart';

class WhatsInclude extends StatelessWidget {
  final List includes;
  const WhatsInclude({@required this.includes});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.13,
        padding: EdgeInsets.only(left: 5.0),
        decoration: BoxDecoration(
            border: Border.all(width: 0.40, color: Colors.grey),
            borderRadius: BorderRadius.circular(18.0)),
        child: GridView.count(
          childAspectRatio: 4.0,
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: List.generate(includes.length, (index) {
            return Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green[200],
                ),
                Flexible(
                  child: Text(
                    '${includes[index]}',
                  ),
                ),
              ],
            );
          }),
        ));
  }
}
