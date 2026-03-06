import 'package:flutter/material.dart';

abstract class AppAnimations {
  static const micro  = Duration(milliseconds: 100);
  static const fast   = Duration(milliseconds: 200);
  static const normal = Duration(milliseconds: 350);
  static const slow   = Duration(milliseconds: 600);
  static const idle   = Duration(seconds: 2);

  static const standard  = Curves.easeInOut;
  static const enter     = Curves.easeOut;
  static const exit      = Curves.easeIn;
  static const spring    = Curves.elasticOut;
  static const bounce    = Curves.bounceOut;
  static const overshoot = Cubic(0.34, 1.56, 0.64, 1);
}
