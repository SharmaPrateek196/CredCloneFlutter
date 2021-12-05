import 'package:get/get.dart';
import 'package:logger/logger.dart';

class DashboardController extends GetxController {
  var currentTabIndex = 0.obs;
  var logger = Logger();

  void changeTabIndex(int newTabIndex) {
    this.currentTabIndex.value = newTabIndex;
  }
}