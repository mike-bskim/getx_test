import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var quantity = 0.obs;
  var total = 0.obs;

  @override
  void onClose() {
    debugPrint(hashCode.toString());
    super.onClose();
  }
}
