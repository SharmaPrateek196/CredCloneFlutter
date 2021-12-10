import 'package:cred/data/api/FakeApis.dart';
import 'package:cred/data/fakedata/AllFakeDataFile.dart';
import 'package:cred/models/CreditCardModel.dart';
import 'package:cred/models/HomeAdvModel.dart';

class FakeApisImpl implements FakeApis {
  @override
  Future<List<HomeAdvModel>> getHomeAdvertizes() {
    return Future.delayed(const Duration(seconds: 4), () => homeAdvList);
  }

  @override
  Future<void> claimCoupon(int index) {
    homeAdvList[index].isClaimed = true;
  }

  @override
  Future<List<CreditCardModel>> getCreditCards() {
    return Future.delayed(const Duration(seconds: 3), () => cards);
  }

}