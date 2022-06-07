import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get.put"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            debugPrint(Get.find<DependencyController>().hashCode.toString());
          },
          child: const Text('Print hashCode'),
        ),
      ),
    );
  }
}
