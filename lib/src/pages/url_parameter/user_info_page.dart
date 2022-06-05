import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(fontSize: 20.0);
    return Scaffold(
        appBar: AppBar(
          title: const Text("parameters 받기"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${Get.parameters["uid"]} 회원님", style: textStyle),
              Text("당신의 이름은 : ${Get.parameters["name"]}", style: textStyle),
              Text("당신의 나이는 : ${Get.parameters["age"]}", style: textStyle),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text("이전페이지로 이동"),
                onPressed: () {
                  Get.back();
                },
              ),
              ElevatedButton(
                child: const Text("홈으로 이동"),
                onPressed: () {
                  Get.offAll(() => const Home());
                },
              ),
            ],
          ),
        ));
  }
}
