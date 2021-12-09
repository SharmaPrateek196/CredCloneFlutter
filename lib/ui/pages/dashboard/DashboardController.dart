import 'package:get/get.dart';

class DashboardController extends GetxController {
  var currentTabIndex = 0.obs;

  void changeTabIndex(int newTabIndex) {
    this.currentTabIndex.value = newTabIndex;
  }
}