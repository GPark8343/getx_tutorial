import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_management/src/pages/normal/first.dart';
import 'package:sample_route_management/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("라우트 관리 홈")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                  Get.to(FirstPage());
                },
                child: Text("일반적인 라우트")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .pushNamed("/first");
                  Get.toNamed("/first");
                },
                child: Text("Named 라우트")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .pushNamed("/first");
                  Get.toNamed("/next", arguments: User(name: "박현도", age: 21));
                },
                child: Text("Arguments 전달")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .pushNamed("/first");
                  Get.toNamed("/user/28357?name=현도&age=21");
                },
                child: Text("동적 url")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .pushNamed("/first");
                  Get.to(SimpleStateManagePage());
                },
                child: Text("단순상태관리")),
          ],
        ),
      ),
    );
  }
}

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}
