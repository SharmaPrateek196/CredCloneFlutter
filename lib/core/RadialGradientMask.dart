import 'package:flutter/material.dart';

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child, this.gradient});

  final Widget child;
  final RadialGradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(bounds),
      child: child,
    );
  }
}