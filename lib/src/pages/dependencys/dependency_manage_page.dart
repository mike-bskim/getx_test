import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/dependency_controller.dart';
// import '../../pages/dependencys/get_create.dart';
import '../../pages/dependencys/get_lazyput.dart';
import '../../pages/dependencys/get_put.dart';
import '../../pages/dependencys/get_putasync.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("종속성 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Get.put"),
              onPressed: () {
                Get.to(
                  const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Get.lazyPut"),
              onPressed: () {
                Get.to(
                  const GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Get.putAsync"),
              onPressed: () {
                Get.to(
                  const GetPutAsync(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(const Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
            ),
            // ElevatedButton(
            //   child: Text("Get.create"),
            //   onPressed: () {
            //     Get.to(
            //       GetCreate(),
            //       binding: BindingsBuilder(() {
            //         Get.create<DependencyController>(
            //             () => DependencyController());
            //       }),
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
