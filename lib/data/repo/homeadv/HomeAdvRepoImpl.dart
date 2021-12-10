import 'dart:ffi';

import 'package:cred/data/api/FakeApis.dart';
import 'package:cred/data/api/FakeApisImpl.dart';
import 'package:cred/models/HomeAdvModel.dart';
import 'package:get/get.dart';

import 'HomeAdvRepo.dart';

class HomeAdvRepoImpl implements HomeAdvRepo {
  FakeApis api;

  HomeAdvRepoImpl() {
    api = Get.put(FakeApisImpl());
  }

  @override
  Future<List<HomeAdvModel>> fetchHomeAdvList() async {
    return await api.getHomeAdvertizes();
  }

  @override
  Future<void> claimCoupon(int index) async {
    await api.claimCoupon(index);
  }
}