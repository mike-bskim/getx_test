import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';
import 'second.dart';

// import 'package:sample_getx/src/home.dart';
// import 'package:sample_getx/src/pages/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (BuildContext context) => SecondPage(),
                  // ));
                  Get.to(
                    () => const SecondPage(),
                    // transition: Transition.topLevel,
                  );
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
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => const Home()),
                  //     (route) => false);
                  Get.offAll(() => const Home());
                },
              )
            ],
          ),
        ));
  }
}
