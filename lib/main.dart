import 'package:cred/DashboardBinding.dart';
import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/core/RadialGradientMask.dart';
import 'package:cred/pages/widgets/CreditCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import 'core/BottomBarClipper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CRED',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: darkMaterialBlack,
      ),
      getPages: [
        GetPage(
          name: "/dashboard",
          page: () => MyHomePage(),
          binding: DashBoardBinding(),
        ),
      ],
      initialRoute: "/dashboard",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex(DarkBackground),
      bottomNavigationBar: BottomAppBar(
        color: HexColor.fromHex(DarkBackground),
        child: ClipPath(
          clipper: BottomBarClipper(),
          child: Stack(
            children: [
              Container(
                height: 85,
                decoration: BoxDecoration(
                  color: HexColor.fromHex(ExtraDarkBackground),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RadiantGradientMask(
                        child: IconButton(icon: Icon(Icons.home, size: 35, color: Colors.white,), onPressed: () {}),
                        gradient: pinkRadialGradientCenterBottomRight,
                      ),
                      IconButton(icon: Icon(Icons.home, size: 35,), onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28.0, right: 34.0),
                        child: IconButton(icon: Icon(Icons.circle, size: 70,), onPressed: () {}),
                      ),
                      IconButton(icon: Icon(Icons.home, size: 35,), onPressed: () {}),
                      IconButton(icon: Icon(Icons.home, size: 35,), onPressed: () {}),
                    ],
                  ),
                ),
              ),
              CustomPaint(
                painter: BottomBarBorderPainter(),
                child: Container(
                  height: 85,
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [CreditCardLayout(), CreditCardLayout(), CreditCardLayout()],
      ),
    );
  }
}
