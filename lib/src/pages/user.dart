import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';
// import 'package:sample_getx/src/home.dart';
// import 'package:sample_getx/src/pages/normal/second.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("parmas 받기"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${Get.parameters["uid"]} 회원님"),
              Text("당신의 이름은 : ${Get.parameters["name"]}"),
              Text("당신의 나이는 : ${Get.parameters["age"]}"),
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
