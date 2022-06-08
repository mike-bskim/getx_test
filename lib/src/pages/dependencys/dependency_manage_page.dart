import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/binding/shopping_binding.dart';
import 'package:getx_test/src/pages/shopping/shopping_page.dart';
import '../../controller/dependency_controller.dart';
import '../../pages/dependencys/get_lazyput.dart';
import '../../pages/dependencys/get_put.dart';
import '../../pages/dependencys/get_putasync.dart';
import 'get_create.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(minimumSize: const Size(150.0, 35.0));
    Divider divider = const Divider(
        height: 16,
        thickness: 1,
        indent: 16,
        endIndent: 16,
        color: Colors.grey);

    return Scaffold(
      appBar: AppBar(
        title: const Text("종속성 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("Get.put"),
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    // 페이지 이동과 동시에 Controller 인스턴스 생성.
                    Get.put(DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("Get.lazyPut"),
              onPressed: () {
                Get.to(
                  () => const GetLazyPut(),
                  binding: BindingsBuilder(() {
                    // Get.find 호출시 Controller 인스턴스 생성.
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("Get.putAsync"),
              onPressed: () {
                Get.to(
                  () => const GetPutAsync(),
                  binding: BindingsBuilder(() {
                    // async 이후 Controller 인스턴스 생성.
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(const Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("Get.create"),
              onPressed: () {
                Get.to(
                  () => const GetCreate(),
                  binding: BindingsBuilder(() {
                    // Get.find 호출시 마다 새로운 인스턴스 생성함
                    // 싱클톤방식이 아니라서 삭제를 수동으로 해줘야 함, 수동삭제는 구현못함
                    Get.create<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
            ),
            divider,
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("Get.create 예시"),
              onPressed: () {
                Get.to(() => const ShoppingPage(), binding: ShoppingBinding());
              },
            ),
          ],
        ),
      ),
    );
  }
}
