import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/home.dart';
// import 'src/pages/named/first.dart';
// import 'src/pages/named/second.dart';
// import 'src/pages/normal/first.dart';
// import 'src/pages/normal/second.dart';
// import 'src/pages/normal/third.dart';
// import 'src/pages/user.dart';

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
      home: const Home(),
      // getPages: [
      //   GetPage(name: '/', pages: () => const Home()),
      //   GetPage(
      //       name: '/first-name',
      //       pages: () => const FirstNamedPage(),
      //       transition: Transition.fadeIn),
      //   GetPage(
      //       name: '/second-name',
      //       pages: () => const SecondNamedPage(),
      //       transition: Transition.fadeIn),
      //   GetPage(name: '/user/:uid', pages: () => const UserInfoPage()),
      // ],
    );
  }
}
