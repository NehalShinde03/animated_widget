import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class SpinningConainer extends AnimatedWidget{

  SpinningConainer({
    super.key,
    required AnimationController controller
}) : super(listenable: controller);

  Animation<double> get val => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
      return Transform.rotate(
        angle: val.value * 2.0 * math.pi,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue,
        ),
      );
  }

}