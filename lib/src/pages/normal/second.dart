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
                  Get.to(() => const ThirdPage());
                },
              ),
              ElevatedButton(
                child: const Text("이전페이지로 이동"),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
              ),
              ElevatedButton(
                child: const Text("홈으로 이동"),
                onPressed: () {
                  // 이전 스택을 모두 비우고 Home 으로 이동
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => const Home()),
                  //         (route) => false);
                  Get.offAll(() => const Home());
                },
              )
            ],
          ),
        ));
  }
}
