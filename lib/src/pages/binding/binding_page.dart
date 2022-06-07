import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

class BindingPage extends StatelessWidget {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Binding"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text('count: ${Get.find<DependencyController>().count.value}',
                  style: textStyle);
            }),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint(
                    Get.find<DependencyController>().hashCode.toString());
                // Get.find<DependencyController>().increase();
                DependencyController.to.increase();
              },
              child: const Text('Print hashCode'),
            ),
          ],
        ),
      ),
    );
  }
}
