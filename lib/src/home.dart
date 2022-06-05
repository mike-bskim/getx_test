import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page/dependencys/dependency_manage_page.dart';
import 'page/next_page.dart';
import 'page/normal/first.dart';
import 'page/reactive_state_manage_page.dart';
import 'page/simple_state_manage_page.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("라우트 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("단순 페이지 라우팅"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const FirstPage(),
                ));
                // Get.to(FirstPage());
              },
            ),
            ElevatedButton(
              child: const Text("named 페이지 라우팅"),
              onPressed: () {
                Navigator.of(context).pushNamed("/first-name");
                // Get.toNamed("first-name");
              },
            ),
            ElevatedButton(
              child: const Text("라우트에 데이터 보내기 : 개남"),
              onPressed: () {
                Get.to(const NextPage(), arguments: "개남");
                // Get.to(NextPage(), arguments: 5);
                // Get.to(NextPage(), arguments: {"name": "개남", "age": 22});
                // Get.to(NextPage(), arguments: User(name: "개남", age: 22));
                // Get.toNamed("/next", arguments: "개남");
              },
            ),
            ElevatedButton(
              child: const Text("동적링크 전송"),
              onPressed: () {
                Get.toNamed("/user/1424?name=개남&age=22");
              },
            ),
            ElevatedButton(
              child: const Text("단순 상태관리"),
              onPressed: () {
                Get.to(const SimpleStateManagePage());
              },
            ),
            ElevatedButton(
              child: const Text("반응형 상태관리"),
              onPressed: () {
                Get.to(const ReactiveStateManagePage());
              },
            ),
            ElevatedButton(
              child: const Text("종속성 상태관리"),
              onPressed: () {
                Get.to(const DependencyManagePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  double age;
  User({required this.name, required this.age});
}