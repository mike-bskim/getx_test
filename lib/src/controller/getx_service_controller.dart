import 'package:get/get.dart';

class GetXServiceController extends GetxService {
  static GetXServiceController get to => Get.find();
  RxInt count = 0.obs;

  void increase() {
    count++;
  }
}
