import 'package:get/get.dart';

class GetXControllerController extends GetxController {
  static GetXControllerController get to => Get.find();
  RxInt count = 0.obs;

  void increase() {
    count++;
  }
}