import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/home.dart';
import 'src/pages/named/first.dart';
import 'src/pages/named/second.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
// Navigator.of(context) 를 사용하는 경우, initialRoute,routes 필요함.
      // home: const Home(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const Home(),
      //   '/first-named': (context) => const FirstNamedPage(),
      //   '/second-named': (context) => const SecondNamedPage(),
      // },
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(
            name: '/first-named',
            page: () => const FirstNamedPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/second-named',
            page: () => const SecondNamedPage(),
            transition: Transition.fadeIn),
        // GetPage(name: '/user/:uid', pages: () => const UserInfoPage()),
      ],
    );
  }
}
