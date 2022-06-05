import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("(Named) 두번째 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("홈으로 이동"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/");
                Get.toNamed("/");
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
              child: const Text("홈으로 돌아가기"),
              onPressed: () {
                // Navigator.of(context)
                //     .pushNamedAndRemoveUntil("/", (route) => false);
                Get.offAllNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
