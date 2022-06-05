import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../src/home.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(Get.previousRoute.toString());
    return Scaffold(
        appBar: AppBar(
          title: const Text("세번째 페이지"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("홈으로 이동"),
                onPressed: () {
                  Get.to(const Home());
                },
              ),
              ElevatedButton(
                child: const Text("이전페이지로 이동"),
                onPressed: () {
                  Get.back();
                },
              ),
              ElevatedButton(
                child: const Text("홈으로 돌아가기"),
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => const Home()),
                  //     (route) => false);
                  Get.offAll(Home());
                },
              ),
            ],
          ),
        ));
  }
}
