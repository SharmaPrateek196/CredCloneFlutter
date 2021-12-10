import 'dart:ffi';

import 'package:cred/models/HomeAdvModel.dart';

abstract class HomeAdvRepo {
  Future<List<HomeAdvModel>> fetchHomeAdvList();
  Future<void> claimCoupon(int index);
}