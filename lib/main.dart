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
      initialBinding: DashBoardBinding(),
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

  final double _bottomBarHeight = 80;

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.find<DashboardController>();

    _onBottomTabPressed(int indexToMoveTo) {
      dashboardController.changeTabIndex(indexToMoveTo);
    }

    final _bottomTabScreensList = [
      HomePage(),
      CardsPage(),
      Container(),
      MoneyPage(),
      ClubPage()
    ];

    void _showBottomSheet() { showModalBottomSheet<dynamic>(
        context: context,
        isScrollControlled: true,
        backgroundColor: HexColor.fromHex(BottomSheetBackground),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        builder: (BuildContext context) {
        return CentralPage();
        });
    }

    Widget _getBottomBarRow() {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(icon: Image.asset("assets/images/icon_options.png",), onPressed: () { _onBottomTabPressed(0); }),
          IconButton(icon: Image.asset("assets/images/icon_cc.png"), onPressed: () { _onBottomTabPressed(1); }),
          IconButton(icon: Image.asset("assets/images/icon_cred_golden.png"), onPressed: () { _showBottomSheet(); }),
          IconButton(icon: Image.asset("assets/images/bank_colored.png"), onPressed: () { _onBottomTabPressed(3); }),
          IconButton(icon: Image.asset("assets/images/icon_club.png"), onPressed: () { _onBottomTabPressed(4); }),
        ],
      );
    }

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
              CustomPaint(
                painter: BottomBarBorderPainter(),
                child: Container(
                  height: _bottomBarHeight,
                ),
              ),
              Positioned.fill(
                top: 28,
                child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: _getBottomBarRow()
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
