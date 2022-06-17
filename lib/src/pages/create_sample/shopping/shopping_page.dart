import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/shopping_controller.dart';
import 'shopping_item.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get.create 예시"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Obx(
                () => Text(
                  'Total: ${Get.find<ShoppingController>(tag: 'total').total.value}',
                  style: const TextStyle(fontSize: 20), // total
                ),
              ),
              Expanded(
                child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ShoppingItem(
                      item: 'Item No. ${(index+1).toString()}',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
