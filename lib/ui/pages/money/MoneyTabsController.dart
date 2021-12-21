import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoneyTabsController  extends GetxController with GetSingleTickerProviderStateMixin {
  TabController tabController;

  List<Tab> moneyTabsList = <Tab> [
    Tab(text: "credit score", ),
    Tab(text: "accounts", ),
    Tab(text: "cash", ),
    Tab(text: "mutual funds", ),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: moneyTabsList.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}