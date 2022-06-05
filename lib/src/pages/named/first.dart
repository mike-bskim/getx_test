import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:sample_getx/src/home.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("첫번째 페이지"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("다음 페이지 이동"),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/second-name");
                  Get.toNamed("second-name");
                },
              ),
              ElevatedButton(
                child: const Text("이전페이지로 이동"),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
              ),
            ],
          ),
        ));
  }
}
