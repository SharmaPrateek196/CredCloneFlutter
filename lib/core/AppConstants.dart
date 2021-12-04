import 'package:cred/core/Extensions.dart';
import 'package:flutter/material.dart';

final String DarkBackground = "#191A19";
final String CardShadow = "#34495E";
final String White = "#ffffff";
final String TextBlack = "#000000";
final String Grey = "#808080";
final String Red = "#FF0000";
final String Maroon = "#C20000";
final String Pink200 = "#be785b";
final String Pink300 = "#b77256";
final String Pink400 = "#ad6a4f";
final String Pink500 = "#97563c";

final pinkRadientGradientCenterBottomRight = RadialGradient(
  center: Alignment.bottomRight,
  colors: [
    HexColor.fromHex(Pink200),
    HexColor.fromHex(Pink300),
    HexColor.fromHex(Pink400),
    HexColor.fromHex(Pink500),
  ]
);

MaterialColor darkMaterialBlack = const MaterialColor(
  0xFF191A19,
  const {
    50: const Color(0xFF191A19),
    100: const Color(0xFF191A19),
    200: const Color(0xFF191A19),
    300: const Color(0xFF191A19),
    400: const Color(0xFF191A19),
    500: const Color(0xFF191A19),
    600: const Color(0xFF191A19),
    700: const Color(0xFF191A19),
    800: const Color(0xFF191A19),
    900: const Color(0xFF191A19)
  },
);
