import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/simple_state_controller.dart';
import 'with_getx.dart';
import 'with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("단순 상태 관리"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: WithGetX(),
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
