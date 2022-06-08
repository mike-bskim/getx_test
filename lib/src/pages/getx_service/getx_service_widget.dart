import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/getx_service_controller.dart';

class GetXServiceWidget extends GetView<GetXServiceController> {
  const GetXServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(minimumSize: const Size(200.0, 35.0));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX Service'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.count.value.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("GetX Service Increase"),
              onPressed: () {
                controller.increase();
                debugPrint('hashCode[${controller.hashCode}] : ${controller.count.value}');
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("GetX Service clear"),
              onPressed: () {
                Get.delete<GetXServiceController>(force: true);
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
