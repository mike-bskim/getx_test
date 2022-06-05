import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../src/home.dart';
import 'third.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("두번째 페이지"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("다음 페이지 이동"),
                onPressed: () {
                  Get.to(const ThirdPage());
                },
              ),
              ElevatedButton(
                child: const Text("이전페이지로 이동"),
                onPressed: () {
                  Get.back();
                },
              ),
              ElevatedButton(
                child: const Text("홈으로 이동"),
                onPressed: () {
                  Get.offAll(const Home());
                },
              )
            ],
          ),
        ));
  }
}
