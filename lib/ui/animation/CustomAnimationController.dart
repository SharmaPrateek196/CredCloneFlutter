import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class CustomAnimationController extends AnimationController {
  CustomAnimationController({Duration duration, TickerProvider vsync}): super(duration: duration, vsync: vsync);
}