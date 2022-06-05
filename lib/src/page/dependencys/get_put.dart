import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';
// import 'package:sample_getx/src/controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          debugPrint(Get.find<DependencyController>().hashCode.toString());
        }, child: null,
      ),
    );
  }
}
