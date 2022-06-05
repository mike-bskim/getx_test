import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../controller/simple_state_controller.dart';
import 'simple_state_manage/with_getx.dart';
import 'simple_state_manage/with_providar.dart';
// import 'package:sample_getx/src/controller/simple_state_controller.dart';
// import 'package:sample_getx/src/pages/simple_state_manage/with_getx.dart';
// import 'package:sample_getx/src/pages/simple_state_manage/with_providar.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SimpleStateControllerWithGetx());

    return Scaffold(
      appBar: AppBar(
        title: const Text("단순 상태 관리"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: WithGetx(),
          ),
          Expanded(
            child: ChangeNotifierProvider<SimpleStateControllerWithProvider>(
                create: (context) => SimpleStateControllerWithProvider(),
                child: const WithProvider()),
          ),
        ],
      ),
    );
  }
}
