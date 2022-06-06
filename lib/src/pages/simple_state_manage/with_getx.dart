import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/simple_state_controller.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('with GetX >> build');
    // injection
    Get.put(SimpleStateControllerWithGetX());

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("GetX", style: TextStyle(fontSize: 30)),
          // id 를 test 로 설정하여 구분가능
          GetBuilder<SimpleStateControllerWithGetX>(
            id: "test",
            builder: (controller) {
              debugPrint("counter:${controller.count} + ID is 'test'");
             return Text(
               "${controller.count}",
               style: const TextStyle(fontSize: 50),
             );
            }
          ),
          // id 를 설정하지 않아서 구분가능
          GetBuilder<SimpleStateControllerWithGetX>(
            builder: (controller) {
              debugPrint("counter:${controller.count} + no ID");
              return Text(
                controller.count.toString(),
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          ElevatedButton(
            child: const Text("+", style: TextStyle(fontSize: 30)),
            onPressed: () {
              // Get.find<SimpleStateControllerWithGetX>().increment();
              Get.find<SimpleStateControllerWithGetX>().incrementForId("test");
            },
          ),
          ElevatedButton(
            child: const Text("+", style: TextStyle(fontSize: 30)),
            onPressed: () {
              Get.find<SimpleStateControllerWithGetX>().increment();
              // Get.find<SimpleStateControllerWithGetX>().incrementForId("test");
            },
          ),
          // ElevatedButton(
          //   child: const Text("5로 변경", style: TextStyle(fontSize: 30)),
          //   onPressed: () {
          //     Get.find<SimpleStateControllerWithGetX>().putNumber(5);
          //     // Get.find<SimpleStateControllerWithGetx>().incrementForId("test");
          //   },
          // ),
        ],
      ),
    );
  }
}
