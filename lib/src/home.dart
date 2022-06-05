import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/argument/argument_page.dart';
import 'pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(minimumSize: const Size(280.0, 35.0));

    return Scaffold(
      appBar: AppBar(
        title: const Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("단순 페이지 라우팅"),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (BuildContext context) => const FirstPage(),
                // ));
                Get.to(() => const FirstPage());
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("named 페이지 라우팅"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first-named");
                Get.toNamed("first-named");
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("Arguments 로 데이터 보내기 : Flutter"),
              onPressed: () {
                // 문자열, 숫자 전달 가능
                // Get.to(const ArgumentPage(), arguments: "Flutter");
                // Get.to(() => const ArgumentPage(), arguments: 5);
                // map 타입 전달
                // Get.to(() => const ArgumentPage(), arguments: {"name": "Flutter", "age": 22});
                // 클래스 객체도 전달가능
                Get.to(() => const ArgumentPage(),
                    arguments: User(name: "Flutter", age: 3.0));
                // Get.toNamed("/argument", arguments: "Flutter");
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text("URL Parameters 로 데이터 보내기"),
              onPressed: () {
                Get.toNamed("/user/1424?name=Flutter&age=22");
              },
            ),
            // ElevatedButton(
            //   child: const Text("단순 상태관리"),
            //   onPressed: () {
            //     Get.to(const SimpleStateManagePage());
            //   },
            // ),
            // ElevatedButton(
            //   child: const Text("반응형 상태관리"),
            //   onPressed: () {
            //     Get.to(const ReactiveStateManagePage());
            //   },
            // ),
            // ElevatedButton(
            //   child: const Text("종속성 상태관리"),
            //   onPressed: () {
            //     Get.to(const DependencyManagePage());
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class User {
  final String name;
  final double age;

  User({required this.name, required this.age});
}
