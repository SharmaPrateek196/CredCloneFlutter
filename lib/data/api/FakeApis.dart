import 'dart:ffi';

import 'package:cred/models/CreditCardModel.dart';
import 'package:cred/models/HomeAdvModel.dart';

abstract class FakeApis {
  Future<List<HomeAdvModel>> getHomeAdvertizes();
  Future<void> claimCoupon(int index);
  Future<List<CreditCardModel>> getCreditCards();
}