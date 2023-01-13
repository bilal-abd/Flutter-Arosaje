import 'package:flutter/material.dart';
import 'package:flutter_application_1/logincontroller.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(title: Text("counter")),
        body: Column(
          children: [
            Text("data"),
          ],
        ),
      );
}
