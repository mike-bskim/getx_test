import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/simple_state_controller.dart';
// import import'package:sample_getx/src/controller/simple_state_controller.dart';

class WithGetx extends StatelessWidget {
  const WithGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Getx", style: TextStyle(fontSize: 30)),
          GetBuilder<SimpleStateControllerWithGetx>(
            id: "test",
            builder: (controller) => Text(
              "${controller.count}",
              style: const TextStyle(fontSize: 50),
            ),
          ),
          GetBuilder<SimpleStateControllerWithGetx>(
            builder: (controller) {
              debugPrint("update!!");
              return Text(
                controller.count.toString(),
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          ElevatedButton(
            child: const Text("+", style: TextStyle(fontSize: 30)),
            onPressed: () {
              Get.find<SimpleStateControllerWithGetx>().increment();
              // Get.find<SimpleStateControllerWithGetx>().incrementForId("test");
            },
          ),
          ElevatedButton(
            child: const Text("5로 변경", style: TextStyle(fontSize: 30)),
            onPressed: () {
              Get.find<SimpleStateControllerWithGetx>().putNumber(5);
              // Get.find<SimpleStateControllerWithGetx>().incrementForId("test");
            },
          ),
        ],
      ),
    );
  }
}
