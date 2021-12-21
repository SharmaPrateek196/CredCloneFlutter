import 'package:cred/core/Extensions.dart';
import 'package:flutter/material.dart';

final String DarkBackground = "#212325";
final String ExtraDarkBackground = "#1d1f21";
final String CardShadow = "#34495E";
final String White = "#ffffff";
final String TextBlack = "#000000";
final String Grey = "#808080";
final String LightGrayText = "#4c4e50";
final String Red = "#FF0000";
final String Maroon = "#C20000";
final String Pink200 = "#e4ac9c";
final String Pink300 = "#b77256";
final String Pink400 = "#ad6a4f";
final String Pink500 = "#97563c";
final String TextGray = "#8e9091";
final String ShadowGray = "#3a3e40";
final String LightSkyblue = "#c0e7fe";
final String CCDarkBackground = "#52575f";
final String CCTextGray = "#626465";
final String CreamyYellow = "#ffb65f";
final String Green = "#2dc485";
final String PayNowButtonBlue = "#3458a1";
final String BottomSheetBackground = "#f8f8f8";
final String CreditScoreGrayBg = "#2b2f32";
final String CreditScoreDarkBg = "#212325";
final String LightWhite = "#adaeaf";
final String RefreshTextGray = "#7e8081";

final pinkRadialGradientCenterBottomRight = RadialGradient(
  center: Alignment.bottomRight,
  colors: [
    HexColor.fromHex(Pink200),
    HexColor.fromHex(Pink300),
    HexColor.fromHex(Pink400),
    HexColor.fromHex(Pink500),
  ]
);

final pinkLinearSymmetricGradientLeftToRight = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      HexColor.fromHex(Pink200),
      HexColor.fromHex(Pink300),
      HexColor.fromHex(Pink400),
      HexColor.fromHex(Pink500),
      HexColor.fromHex(Pink400),
      HexColor.fromHex(Pink300),
      HexColor.fromHex(Pink200),
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

// Routes
String RouteDashboard = "/dashboard";
String RouteHome = "/home";
String RouteCards = "/cards";
String RouteMoney = "/money";
String RouteClub = "/club";
String RouteCentralTab = "/central_tab";