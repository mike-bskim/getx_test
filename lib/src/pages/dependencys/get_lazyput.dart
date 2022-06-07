import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
    ElevatedButton.styleFrom(minimumSize: const Size(150.0, 35.0));

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Get.lazyPut"),),
        body: Center(
          child: ElevatedButton(
            style: elevatedButtonStyle,
            child: const Text('Print hashCode'),
            onPressed: () {
              debugPrint(Get.find<DependencyController>().hashCode.toString());
            },
          ),
        ),
    );
  }
}
