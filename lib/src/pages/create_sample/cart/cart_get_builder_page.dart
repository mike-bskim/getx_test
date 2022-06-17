import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/cart_get_builder_controller.dart';
import '../../../controller/cart_get_builder_item_controller.dart';

class CartGetBuilderPage extends GetView<CartGetBuilderController> {
  const CartGetBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetBuilder Cart'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          Obx(
            () => Text(
              'Total: ${controller.totalNumberOfProducts} items in cart',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Obx(() {
              return ListView.separated(
                itemCount: controller.products.length,
                itemBuilder: (BuildContext context, int index) {
                  String product = controller.products[index];

                  return CartItem(product: product);
                },
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.grey,
                  height: 1,
                ),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.addProduct();
        },
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String product;
  const CartItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartGetBuilderItemController>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              product,
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Qty: ${controller.quantity}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    debugPrint(
                        'hashCode: ${controller.hashCode}, ${controller.quantity}');
                    controller.increment();
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () => controller.decrement(),
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
