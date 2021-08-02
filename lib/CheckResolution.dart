import 'package:flutter/material.dart';

class ResolutionCheck {
  bool checkResulation(BuildContext ctx) {
    return MediaQuery.of(ctx).size.width >= 600 ? true : false;
  }

  Size screenSize(BuildContext ctx) {
    return MediaQuery.of(ctx).size;
  }
}
