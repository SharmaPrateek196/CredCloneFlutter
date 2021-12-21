import 'package:cred/core/AppConstants.dart';
import 'package:cred/core/Extensions.dart';
import 'package:cred/ui/pages/money/MoneyTabsController.dart';
import 'package:cred/ui/pages/money/tabs/accounts/AccountsPage.dart';
import 'package:cred/ui/pages/money/tabs/cash/CashPage.dart';
import 'package:cred/ui/pages/money/tabs/creditscores/CreditScorePage.dart';
import 'package:cred/ui/pages/money/tabs/mutualfunds/MutualFundsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MoneyTabsController moneyTabsController = Get.put(MoneyTabsController());

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
          controller: moneyTabsController.tabController,
          tabs: moneyTabsController.moneyTabsList,
          unselectedLabelStyle: _unselectedTabTextStyle,
          labelStyle: _selectedTabTextStyle,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          padding: const EdgeInsets.only(bottom: 12),
        ),
        automaticallyImplyLeading: false,
      ),
      body: TabBarView(
        controller: moneyTabsController.tabController,
        children: [
          CreditScorePage(),
          AccountsPage(),
          CashPage(),
          MutualFundsPage()
        ],
      ),
    );
  }
}
