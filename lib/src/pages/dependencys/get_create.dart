import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

ButtonStyle elevatedButtonStyle =
ElevatedButton.styleFrom(minimumSize: const Size(150.0, 35.0));

class GetCreate extends StatelessWidget {
  const GetCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Divider divider = const Divider(
        height: 8, thickness: 1, indent: 16, endIndent: 16, color: Colors.grey);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dependency Test - Get.create'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: elevatedButtonStyle,
                onPressed: () {
                  debugPrint(
                      Get.find<DependencyController>().hashCode.toString());
                },
                child: const Text('Print hashCode')),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Get.delete<DependencyController>(force: true);
                  Get.back();
                },
                child: const Text('Controller Clear')),
            divider,
            const GetCreateBody('GetX Reactive #1'),
            divider,
            const GetCreateBody('GetX Reactive #2'),
          ],
        ),
      ),
    );
  }
}

class GetCreateBody extends GetWidget<DependencyController> {
  final String _title;

  const GetCreateBody(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_title, style: const TextStyle(fontSize: 20)),
          Container(
            height: 10,
          ),
          Obx(() {
            return Text("${controller.count}",
                style: const TextStyle(fontSize: 15));
          }),
          ElevatedButton(
            style: elevatedButtonStyle,
            child: const Text("Get.create"),
            onPressed: () {
              debugPrint(
                  'hashCode: ${controller.hashCode} / ${controller.count}');
              controller.increase();
            },
          ),
        ],
      ),
    );
  }
}
