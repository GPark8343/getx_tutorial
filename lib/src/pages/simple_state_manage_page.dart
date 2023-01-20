import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_management/src/controller/count_controller_with_getx.dart';
import 'package:sample_route_management/src/controller/count_controller_with_provider.dart';
import 'package:sample_route_management/src/pages/state/with_getx.dart';
import 'package:sample_route_management/src/pages/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("단순상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX()),
            Expanded(
                child: ChangeNotifierProvider<CountControllerWithProvider>(
              create: (_) => CountControllerWithProvider(),
              child: WithProvider(),
            )),
          ],
        ),
      ),
    );
  }
}
