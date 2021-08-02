import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Presentation/pages/Car/CarScreen.dart';
import 'Presentation/pages/Home/HomeScreen.dart';
import 'Presentation/pages/Map/MapScreen.dart';

class PageRoutator {
  Function triggerAnimation;
  routePage(String _address, BuildContext ctx, {String index = ''}) {
    switch (_address) {
      case '/':
        Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => HomeScreen()));
        break;
      case 'mapPage':
        Navigator.push(
            ctx,
            MaterialPageRoute(
                builder: (ctx) => CarMapFinder(
                      triggerAnimation: triggerAnimation,
                    )));
        break;
      case 'carDetail':
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (context) => CarScreen(carId: index)),
        );
        break;
      default:
        Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => HomeScreen()));
    }
  }
}
