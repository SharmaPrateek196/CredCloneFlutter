import 'package:flutter/material.dart';

class CircularAvatarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final centerOffset = Offset(size.width*0.5, size.height*0.5);

    Path path = Path();
    path.addOval(Rect.fromCircle(center: centerOffset, radius: size.width*0.4));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}