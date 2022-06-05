import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';
// import 'package:sample_getx/src/home.dart';
// import 'package:sample_getx/src/pages/normal/second.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("arguments 받기"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Get.arguments),
              // Text(Get.arguments.toString()),
              // Text("${Get.arguments["name"]} : ${Get.arguments["age"]}"),
              // Text(
              //     "${(Get.arguments as User).name} : ${(Get.arguments as User).age}"),
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