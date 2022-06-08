import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/shopping_controller.dart';

class ShoppingItem extends StatelessWidget {
  final String item;
  ShoppingItem({Key? key, required this.item}) : super(key: key);

  // injected by Get.create
  final ShoppingController controller = Get.find();
  // injected by Get.put
  final ShoppingController controllerTotal = Get.find(tag: 'total');

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle =
        ElevatedButton.styleFrom(minimumSize: const Size(30.0, 20.0));
    // debugPrint(controller.hashCode.toString());

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 100,
          child: Text(item),
        ),
        ElevatedButton(
          style: elevatedButtonStyle,
          onPressed: () {
            controller.quantity.value++; // create
            // Get.find<ShoppingController>(tag: 'total').total.value++; // put
            controllerTotal.total.value++; // put
            // debugPrint(
            //     Get.find<ShoppingController>(tag: 'total').hashCode.toString());
          },
          child: const Text('+'),
        ),
        SizedBox(
          width: 40,
          child: Obx(
            () => Text(
              textAlign: TextAlign.center,
              controller.quantity.value
                  .toString(), // using same instance of Get.find
            ),
          ),
        ),
        ElevatedButton(
          style: elevatedButtonStyle,
          onPressed: () {
            controller.quantity.value--; // create
            // injected by Get.put
            // Get.find<ShoppingController>(tag: 'total').total.value--;
            controllerTotal.total.value--; // put
          },
          child: const Text('-'),
        ),

      ],
    );
  }
}
