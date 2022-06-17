import 'package:get/get.dart';

import '../controller/cart_get_builder_controller.dart';
import '../controller/cart_get_builder_item_controller.dart';
import '../controller/cart_get_stateless_controller.dart';
import '../controller/cart_get_stateless_item_controller.dart';
import '../controller/cart_get_widget_controller.dart';
import '../controller/cart_get_widget_item_controller.dart';

class GetBuilderBinding implements Bindings {
  @override
  void dependencies() {
    // total by get.put
    Get.put(CartGetBuilderController());
    // each count by get.create
    Get.create(() => CartGetBuilderItemController());
  }
}

class GetStatelessBinding implements Bindings {
  @override
  void dependencies() {
    // total by get.put
    Get.put(CartGetStatelessController());
    // each count by get.create
    Get.create(() => CartGetStatelessItemController());
  }
}

class GetWidgetBinding implements Bindings {
  @override
  void dependencies() {
    // total by get.put
    Get.put(CartGetWidgetController());
    // each count by get.create
    Get.create(() => CartGetWidgetItemController());
  }
}
