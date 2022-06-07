import 'package:get/get.dart';

import '../controller/dependency_controller.dart';

class BindingInjection implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DependencyController());
  }
}
