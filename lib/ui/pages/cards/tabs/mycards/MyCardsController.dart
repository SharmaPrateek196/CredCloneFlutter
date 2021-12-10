import 'package:cred/data/repo/cards/CardsRepo.dart';
import 'package:cred/data/repo/cards/CardsRepoImpl.dart';
import 'package:cred/models/CreditCardModel.dart';
import 'package:get/get.dart';

class MyCardsController extends GetxController {
  var isLoading = false.obs;
  var cardsList = <CreditCardModel>[].obs;

  CardsRepo _repo;
  MyCardsController() {
    _repo = Get.find<CardsRepoImpl>();
    loadMyCards();
  }

  void loadMyCards() async {
    isLoading.value = true;
    var result = await _repo.fetchMyCards();
    isLoading.value = false;
    cardsList.value = result;
  }
}