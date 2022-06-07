import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DependencyController extends GetxController {
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
