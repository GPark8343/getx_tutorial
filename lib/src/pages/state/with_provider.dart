import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_management/src/controller/count_controller_with_getx.dart';
import 'package:sample_route_management/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          "provider",
          style: TextStyle(fontSize: 30),
        ),
        Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
          return Text(
            "${snapshot.count}",
            style: TextStyle(fontSize: 50),
          );
        }),
        ElevatedButton(
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false)
                  .increase();
            },
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ))
      ]),
    );
  }
}
