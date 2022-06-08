import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/getx_controller_controller.dart';
import '../../controller/getx_service_controller.dart';
import 'getx_controller_widget.dart';
import 'getx_service_widget.dart';

class GetXServicePage extends StatelessWidget {
  const GetXServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
    ElevatedButton.styleFrom(minimumSize: const Size(200.0, 35.0));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX Service 예시'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("GetX Controller"),
              onPressed: () {
                Get.to(
                  () => const GetXControllerWidget(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<GetXControllerController>(
                        () => GetXControllerController()),
                  ),
                );
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("GetX Service"),
              onPressed: () {
                Get.to(
                  () => const GetXServiceWidget(),
                  binding: BindingsBuilder(() {
                    // Get.put(GetXServiceTest());
                    Get.lazyPut<GetXServiceController>(() => GetXServiceController());
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
