import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/home.dart';
import 'src/page/named/first.dart';
import 'src/page/named/second.dart';
// import 'src/page/normal/first.dart';
// import 'src/page/normal/second.dart';
// import 'src/page/normal/third.dart';
import 'src/page/user.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(
            name: '/first-name',
            page: () => const FirstNamedPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/second-name',
            page: () => const SecondNamedPage(),
            transition: Transition.fadeIn),
        GetPage(name: '/user/:uid', page: () => const UserInfoPage()),
      ],
    );
  }
}
