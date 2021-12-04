import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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

class BottomBarBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path borderPath = Path();
    borderPath.moveTo(size.width*0.15, size.height*0.3);
    borderPath.lineTo(size.width*0.30, size.height*0.3);
    borderPath.quadraticBezierTo(size.width*0.33, size.height*0.3, size.width*0.36, size.height*0.21);
    borderPath.quadraticBezierTo(size.width*0.5, -size.height*0.15, size.width*0.64, size.height*0.21);
    borderPath.quadraticBezierTo(size.width*0.67, size.height*0.3, size.width*0.7, size.height*0.3);
    borderPath.lineTo(size.width*0.85, size.height*0.3);

    Paint brush = Paint()
    ..color = HexColor.fromHex(Maroon)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 5.0;

    canvas.drawPath(borderPath, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}