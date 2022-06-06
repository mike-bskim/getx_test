import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/simple_state_controller.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  // context 로만 표시하면(BuildContext 생략시), Widget _button(context) 하면
  // context 타입이 dynamic 으로 적용되어 context.read() 오류가 발생한다.
  Widget _button(BuildContext context) {
    return ElevatedButton(
      child: const Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        // 아래 2가지 경우로 접근이 가능하다
        // Provider.of<SimpleStateControllerWithProvider>(context, listen: false)
        //     .increment();
        context.read<SimpleStateControllerWithProvider>().increment();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('with provider >> build');
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
          ElevatedButton(
            child: const Text("+", style: TextStyle(fontSize: 30)),
            onPressed: () {
              // 아래 2가지 경우로 접근이 가능하다
              // Provider.of<SimpleStateControllerWithProvider>(context,
              //     listen: false)
              //     .increment();
              context.read<SimpleStateControllerWithProvider>().increment();
            },
          ),
          _button(context),
        ],
      ),
    );
  }
}
