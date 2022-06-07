import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

class GetPutAsync extends StatelessWidget {
  const GetPutAsync({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get.putAsync"),),
      body: Center(
        child: ElevatedButton(
          child: const Text('Print hashCode'),
          onPressed: () {
            debugPrint(Get.find<DependencyController>().hashCode.toString());
          },
        ),
      ),

    );
  }
}
