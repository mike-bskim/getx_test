import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleStateControllerWithGetX extends GetxController {
  int count = 0;
  void increase() {
    count++;
    update();
  }

  void putNumber(int number) {
    count = number;
    update();
  }

  void incrementForId(String id) {
    count++;
    update([id]); // 배열처리향 함.
  }
  @override
  void onClose() {
    debugPrint(hashCode.toString());
    super.onClose();
  }
}

class SimpleStateControllerWithProvider extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
