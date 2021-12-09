import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/ui/pages/cards/tabs/benefits/BenefitsPage.dart';
import 'package:cred/ui/pages/cards/tabs/CardsTabsController.dart';
import 'package:cred/ui/pages/cards/tabs/extras/ExtrasPage.dart';
import 'package:cred/ui/pages/cards/tabs/manage/ManagePage.dart';
import 'package:cred/ui/pages/cards/tabs/max/MaxPage.dart';
import 'package:cred/ui/pages/cards/tabs/mycards/MyCardsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardsTabsController cardsTabController = Get.put(CardsTabsController());

    final _unselectedTabTextStyle = TextStyle(
        fontSize: 16,
        color: Colors.grey,
        fontWeight: FontWeight.w600
    );

    final _selectedTabTextStyle = TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600
    );

    return Scaffold(
      backgroundColor: HexColor.fromHex(DarkBackground),
      appBar: AppBar(
        toolbarHeight: 26,
        bottom: TabBar(
          controller: cardsTabController.tabController,
          tabs: cardsTabController.cardsTabsList,
          unselectedLabelStyle: _unselectedTabTextStyle,
          labelStyle: _selectedTabTextStyle,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          padding: const EdgeInsets.only(bottom: 12),
        ),
        automaticallyImplyLeading: false,
      ),
      body: TabBarView(
        controller: cardsTabController.tabController,
        children: [
          MyCardsPage(),
          MaxPage(),
          BenefitsPage(),
          ManagePage(),
          ExtrasPage()
        ],
      ),
    );
  }
}
