import 'package:cred/data/api/FakeApis.dart';
import 'package:cred/data/api/FakeApisImpl.dart';
import 'package:cred/models/CreditCardModel.dart';
import 'package:get/get.dart';

import 'CardsRepo.dart';

class CardsRepoImpl implements CardsRepo {
  FakeApis api;

  CardsRepoImpl() {
    api = Get.find<FakeApisImpl>();
  }

  @override
  Future<List<CreditCardModel>> fetchMyCards() async {
    return await api.getCreditCards();
  }

}