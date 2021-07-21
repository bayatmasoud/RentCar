import 'package:flutter/material.dart';

class BoxDecorator extends StatelessWidget {
  final String reqText;
  final Icon favIcon;
  const BoxDecorator({@required this.reqText, this.favIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(width: 0.40, color: Colors.grey),
            borderRadius: BorderRadius.circular(18.0)),
        child: Row(
          children: [
            if (favIcon != null) favIcon,
            SizedBox(
              width: 5.0,
            ),
            Flexible(
              child: Text(
                reqText,
              ),
            ),
          ],
        ));
  }
}
