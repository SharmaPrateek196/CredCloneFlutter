import 'package:cred/ui/pages/cards/CardsPage.dart';
import 'package:cred/ui/pages/cards/CardsPageBinding.dart';
import 'package:cred/ui/pages/centraltab/CentralPage.dart';
import 'package:cred/ui/pages/centraltab/CentralPageBinding.dart';
import 'package:cred/ui/pages/club/ClubPage.dart';
import 'package:cred/ui/pages/club/ClubPageBinding.dart';
import 'package:cred/ui/pages/dashboard/DashboardBinding.dart';
import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/core/RadialGradientMask.dart';
import 'package:cred/ui/pages/dashboard/DashboardController.dart';
import 'package:cred/ui/pages/home/HomePage.dart';
import 'package:cred/ui/pages/home/HomePageBinding.dart';
import 'package:cred/ui/pages/money/MoneyPage.dart';
import 'package:cred/ui/pages/money/MoneyPageBinding.dart';
import 'package:cred/ui/widgets/CreditCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

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
          name: RouteDashboard,
          page: () => DashboardPage(),
          binding: DashBoardBinding(),
        ),GetPage(
          name: RouteHome,
          page: () => HomePage(),
          binding: HomePageBinding(),
        ),GetPage(
          name: RouteCards,
          page: () => CardsPage(),
          binding: CardsPageBinding(),
        ),GetPage(
          name: RouteCentralTab,
          page: () => CentralPage(),
          binding: CentralPageBinding(),
        ),GetPage(
          name: RouteMoney,
          page: () => MoneyPage(),
          binding: MoneyPageBinding(),
        ),GetPage(
          name: RouteClub,
          page: () => ClubPage(),
          binding: ClubPageBinding(),
        ),
      ],
      initialRoute: RouteDashboard,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());

    _onBottomTabPressed(int indexToMoveTo) {
      dashboardController.changeTabIndex(indexToMoveTo);
    }

    final _bottomTabScreensList = [
      HomePage(),
      CardsPage(),
      CentralPage(),
      MoneyPage(),
      ClubPage()
    ];

    return Obx(() => Scaffold(
      backgroundColor: HexColor.fromHex(DarkBackground),
      body: IndexedStack(
        index: dashboardController.currentTabIndex.value,
        children: _bottomTabScreensList,
      ),
      bottomNavigationBar: BottomAppBar(
        color: HexColor.fromHex(DarkBackground),
        child: ClipPath(
          clipper: BottomBarClipper(),
          child: Stack(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: HexColor.fromHex(ExtraDarkBackground),
                ),
              ),
              CustomPaint(
                painter: BottomBarBorderPainter(),
                child: Container(
                  height: 90,
                ),
              ),
              Positioned.fill(
                child: Align(
                  //padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RadiantGradientMask(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: IconButton(icon: Icon(Icons.home, size: 35, color: Colors.white,), onPressed: () { _onBottomTabPressed(0); }),
                        ),
                        gradient: pinkRadialGradientCenterBottomRight,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: IconButton(icon: Icon(Icons.home, size: 35,), onPressed: () { _onBottomTabPressed(1); }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0, right: 46.0),
                        child: IconButton(icon: Icon(Icons.circle, size: 80,), onPressed: () { _onBottomTabPressed(2); }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: IconButton(icon: Icon(Icons.home, size: 35,), onPressed: () { _onBottomTabPressed(3); }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: IconButton(icon: Icon(Icons.home, size: 35,), onPressed: () { _onBottomTabPressed(4); }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
