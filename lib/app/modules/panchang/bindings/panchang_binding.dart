import 'package:get/get.dart';

import '../controllers/panchang_controller.dart';

class PanchangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PanchangController>(
      () => PanchangController(),
    );
  }
}
