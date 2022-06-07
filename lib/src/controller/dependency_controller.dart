import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DependencyController extends GetxController {
  static DependencyController get to => Get.find();
  // Get.find<> 생략하는 방법
  // Get.find<DependencyController>().increase()
  // => DependencyController.to.increase();

  RxInt count=0.obs;
  void increase() {
    count++;
  }

  @override
  void onClose() {
    // 종료시 반환되는 해시코드를 출력
    debugPrint(hashCode.toString());
    super.onClose();
  }
}
