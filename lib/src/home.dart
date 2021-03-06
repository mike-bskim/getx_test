import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/argument/argument_page.dart';
import 'pages/dependencys/dependency_manage_page.dart';
import 'pages/getx_service/getx_service_page.dart';
import 'pages/normal/first.dart';
import 'pages/reactive_state_manage/reactive_state_manage_page.dart';
import 'pages/simple_state_manage/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(minimumSize: const Size(330.0, 40.0));

    Divider divider = const Divider(
        height: 16, thickness: 1, indent: 16, endIndent: 16, color: Colors.grey);

    TextStyle textStyle = const TextStyle(fontSize: 18);

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
              child: Text("단순 페이지 라우팅", style: textStyle),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (BuildContext context) => const FirstPage(),
                // ));
                Get.to(() => const FirstPage());
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("named 페이지 라우팅", style: textStyle),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first-named");
                Get.toNamed("first-named");
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("Arguments 로 데이터 보내기 : Flutter", style: textStyle),
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
              child: Text("URL Parameters 로 데이터 보내기", style: textStyle),
              onPressed: () {
                Get.toNamed("/user/1424?name=Flutter&age=22");
              },
            ),
            divider,
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("단순 상태관리", style: textStyle),
              onPressed: () {
                Get.to(() => const SimpleStateManagePage());
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("반응형 상태관리", style: textStyle),
              onPressed: () {
                Get.to(() => const ReactiveStateManagePage());
              },
            ),
            divider,
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("Dependency injection 예시", style: textStyle),
              onPressed: () {
                Get.to(() => const DependencyManagePage());
              },
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("Binding 예시", style: textStyle),
              onPressed: () {
                Get.toNamed('/binding');
              },
            ),
            divider,
            ElevatedButton(
              style: elevatedButtonStyle,
              child: Text("GetX Service 예시", style: textStyle),
              onPressed: () {
                Get.to(() => const GetXServicePage());
              },
            ),
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
