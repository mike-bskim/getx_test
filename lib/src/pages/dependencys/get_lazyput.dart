import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

class GetLazyPut extends StatefulWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  GetLazyPutState createState() => GetLazyPutState();
}

class GetLazyPutState extends State<GetLazyPut> {
  bool ck = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (_) {
      setState(() {
        ck = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ck) {
      return GetBuilder<DependencyController>(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(),
          );
        },
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
      );
    }
  }
}
