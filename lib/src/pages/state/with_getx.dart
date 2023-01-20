import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_management/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  CountControllerWithGetX _controllerWithGetX =
      Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return ElevatedButton(
        onPressed: () {
          _controllerWithGetX.increase(id);
        },
        child: Text(
          "+",
          style: TextStyle(fontSize: 30),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "GetX",
          style: TextStyle(fontSize: 30),
        ),
        GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 50),
              );
            }),
        GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 50),
              );
            }),
        _button("first"),
        _button("second"),
      ]),
    );
  }
}
