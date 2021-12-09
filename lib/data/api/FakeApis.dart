import 'package:cred/models/HomeAdvModel.dart';

abstract class FakeApis {
  Future<List<HomeAdvModel>> getHomeAdvertizes();
}