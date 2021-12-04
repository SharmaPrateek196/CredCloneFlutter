import 'package:flutter/material.dart';

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height*0.3);
    path.lineTo(size.width*0.30, size.height*0.3);
    path.quadraticBezierTo(size.width*0.33, size.height*0.3, size.width*0.36, size.height*0.21);
    path.quadraticBezierTo(size.width*0.5, -size.height*0.15, size.width*0.64, size.height*0.21);
    path.quadraticBezierTo(size.width*0.67, size.height*0.3, size.width*0.7, size.height*0.3);
    path.lineTo(size.width, size.height*0.3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}