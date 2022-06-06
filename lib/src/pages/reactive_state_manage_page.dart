import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:provider/provider.dart';

import '../controller/reactive_state_controller.dart';
import '../controller/simple_state_controller.dart';
// import 'package:sample_getx/src/controller/reactive_state_controller.dart';
// import 'package:sample_getx/src/controller/simple_state_controller.dart';
// import 'package:sample_getx/src/pages/simple_state_manage/with_getx.dart';
// import 'package:sample_getx/src/pages/simple_state_manage/with_provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SimpleStateControllerWithGetX());
    Get.put(ReactiveStateController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("반응형 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                debugPrint("Count Update");
                return Text(
                  "${Get.find<ReactiveStateController>().d.length}",
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
            ElevatedButton(
              child: const Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<ReactiveStateController>().increment();
              },
            ),
            ElevatedButton(
              child: const Text("5로 변경", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<ReactiveStateController>().putNumber(5);
              },
            ),
            ElevatedButton(
              child: const Text("이름변경", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<ReactiveStateController>().push();
              },
            ),
          ],
        ),
      ),
    );
  }
}
