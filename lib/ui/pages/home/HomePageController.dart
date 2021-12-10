import 'package:cred/data/repo/homeadv/HomeAdvRepo.dart';
import 'package:cred/data/repo/homeadv/HomeAdvRepoImpl.dart';
import 'package:cred/models/HomeAdvModel.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var isLoading = false.obs;
  var homeAdvListData = <HomeAdvModel>[].obs;

  HomeAdvRepo _repo;
  HomePageController() {
    _repo = Get.find<HomeAdvRepoImpl>();
    loadHomeAdvs();
  }

  void loadHomeAdvs() async {
    isLoading.value = true;
    var result = await _repo.fetchHomeAdvList();
    isLoading.value = false;
    homeAdvListData.value = result;
  }

  void claimCoupon(int index) async {
    await _repo.claimCoupon(index);
  }
}