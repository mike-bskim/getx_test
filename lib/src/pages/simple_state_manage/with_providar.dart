import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/simple_state_controller.dart';
// import 'package:sample_getx/src/controller/simple_state_controller.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  Widget _button(context) {
    return ElevatedButton(
      child: const Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        Provider.of<SimpleStateControllerWithProvider>(context, listen: false)
            .increment();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Provider", style: TextStyle(fontSize: 30)),
          Consumer<SimpleStateControllerWithProvider>(
            builder: (_, snapshot, child) {
              return Text(snapshot.count.toString(),
                  style: const TextStyle(fontSize: 50));
            },
          ),
          // ElevatedButton(
          //   child: Text("+", style: TextStyle(fontSize: 30)),
          //   onPressed: () {
          //     Provider.of<SimpleStateControllerWithProvider>(context,
          //             listen: false)
          //         .increment();
          //   },
          // ),
          _button(context),
        ],
      ),
    );
  }
}
