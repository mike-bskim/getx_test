import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

// import 'package:sample_getx/src/home.dart';
// import 'package:sample_getx/src/pages/normal/second.dart';

class ArgumentPage extends StatelessWidget {
  const ArgumentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 클래스 객체로 전달받은 경우만 사용.
    User user = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("arguments 받기"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('전달받은 인자는 : [${Get.arguments}]'),
            // Text('전달받은 인자는 : [Get.arguments.toString()),
// map 타입으로 전달받은 경우
            // Text("${Get.arguments["name"]} : ${Get.arguments["age"]}"),
// 클래스 객체타입으로 전달받은 경우
            Text("${user.name} : ${user.age}"),
            const SizedBox(
              height: 20.0,
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
                Get.offAll(() => const Home());
              },
            ),
          ],
        ),
      ),
    );
  }
}
