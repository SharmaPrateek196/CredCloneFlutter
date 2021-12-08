import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsTabsController extends GetxController with GetSingleTickerProviderStateMixin {
  TabController tabController;

  List<Tab> cardsTabsList = <Tab> [
    Tab(text: "my cards", ),
    Tab(text: "max", ),
    Tab(text: "benefits", ),
    Tab(text: "manage", ),
    Tab(text: "extras", ),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: cardsTabsList.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}