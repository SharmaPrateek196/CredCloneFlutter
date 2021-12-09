import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'DashboardController.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}
