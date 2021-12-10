import 'package:cred/data/api/FakeApisImpl.dart';
import 'package:cred/data/repo/cards/CardsRepoImpl.dart';
import 'package:cred/data/repo/homeadv/HomeAdvRepoImpl.dart';
import 'package:cred/ui/pages/cards/tabs/mycards/MyCardsController.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var currentTabIndex = 0.obs;

  DashboardController() {
    Get.put(FakeApisImpl());
    Get.put(CardsRepoImpl());
    Get.put(HomeAdvRepoImpl());
    Get.put(MyCardsController());
  }

  void changeTabIndex(int newTabIndex) {
    this.currentTabIndex.value = newTabIndex;
  }
}