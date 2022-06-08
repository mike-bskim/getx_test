import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/reactive_state_controller.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put(ReactiveStateController());
    // Get.find<ReactiveStateController>() 대신 reactiveStateCtrl 으로 접근가능
    ReactiveStateController reactiveStateCtrl =
        Get.put(ReactiveStateController());
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(minimumSize: const Size(150.0, 30.0));
    var textStyle = const TextStyle(fontSize: 20);

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
                return Column(
                  children: [
                    Text(
                      // "${Get.find<ReactiveStateController>().count}",
                      'count: ${reactiveStateCtrl.count.value}',
                      style: textStyle,
                    ),
                    const SizedBox(height: 10,),
                    // 리스트 접근방법
                    Text(reactiveStateCtrl.d.toString(), style: textStyle),
                    const SizedBox(height: 10,),
                    // 클래스 접근방법
                    Text(reactiveStateCtrl.user.value.name, style: textStyle),
                    const SizedBox(height: 10,),
                    Text(reactiveStateCtrl.user.toString(), style: textStyle),
                    const SizedBox(height: 20,),
                  ],
                );
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("count 증가", style: textStyle),
              onPressed: () {
                // Get.find<ReactiveStateController>().increment();
                reactiveStateCtrl.increase();
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("리스트 추가", style: textStyle),
              onPressed: () {
                // Get.find<ReactiveStateController>().push();
                reactiveStateCtrl.push();
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("이름변경", style: textStyle),
              onPressed: () {
                // Get.find<ReactiveStateController>().updateName('Google');
                reactiveStateCtrl.updateName('Google ${reactiveStateCtrl.count.value}');
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("전체 초기화", style: textStyle),
              onPressed: () {
                // Get.find<ReactiveStateController>().init(0);
                reactiveStateCtrl.init(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
