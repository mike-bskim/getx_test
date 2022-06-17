import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../binding/cart_binding.dart';
import 'cart_get_builder_page.dart';
import 'cart_get_widget_page.dart';
import 'cart_stateless_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
        minimumSize: const Size(280.0, 40.0),
        padding: const EdgeInsets.symmetric(vertical: 12));

    SizedBox sizedBox = const SizedBox(height: 16,);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Get.create 조합 예시'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text(
                'Go to GetWidget Cart',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Get.to(() => const CartGetViewPage(),
                    binding: GetWidgetBinding());
              },
            ),
            sizedBox,
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text(
                'Go to GetBuilder Cart',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Get.to(() => const CartGetBuilderPage(),
                    binding: GetBuilderBinding());
              },
            ),
            sizedBox,
            ElevatedButton(
              style: elevatedButtonStyle,
              child: const Text(
                'Go to Stateless Cart',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Get.to(() => const CartStatelessPage(),
                    binding: GetStatelessBinding());
              },
            ),
          ],
        ),
      ),
    );
  }
}
