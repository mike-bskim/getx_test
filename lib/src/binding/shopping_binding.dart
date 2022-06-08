import 'package:get/get.dart';

import '../controller/shopping_controller.dart';

class ShoppingBinding implements Bindings {
  @override
  void dependencies() {
// different instances for different list items
    Get.create<ShoppingController>(
      () => ShoppingController(),
    );

// Separate instance to display total
    Get.put<ShoppingController>(
      ShoppingController(),
      tag: 'total',
    );
  }
}
