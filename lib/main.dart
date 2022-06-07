import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/binding/binding_injection.dart';

import 'src/controller/dependency_controller.dart';
import 'src/home.dart';
import 'src/pages/argument/argument_page.dart';
import 'src/pages/binding/binding_page.dart';
import 'src/pages/named/first.dart';
import 'src/pages/named/second.dart';
import 'src/pages/url_parameter/user_info_page.dart';

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
// Get.toNamed 를 사용하는 경우, getPages,GetPage 필요함.
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
        GetPage(
            name: '/argument',
            page: () => const ArgumentPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/user/:uid',
            page: () => const UserInfoPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/binding',
            page: () => const BindingPage(),
            // BindingsBuilder 를 통해서 dependency injection.
            binding: BindingsBuilder(() {
              Get.put(DependencyController());
            }),
            transition: Transition.fadeIn),
        GetPage(
            name: '/binding',
            page: () => const BindingPage(),
            // 클래스를 통해서 dependency injection.
            binding: BindingInjection(),
            transition: Transition.fadeIn),
      ],
    );
  }
}
