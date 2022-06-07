import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

class GetCreate extends StatelessWidget {
  const GetCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {
                  debugPrint(
                      Get.find<DependencyController>().hashCode.toString());
                },
              child: const Text('Print hashCode')),
            // const Divider(thickness: 2.0, color: Colors.black),
            // const GetCreateBody('GetX Reactive #1'),
            // const Divider(thickness: 2.0, color: Colors.black),
            // const GetCreateBody('GetX Reactive #2'),
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
