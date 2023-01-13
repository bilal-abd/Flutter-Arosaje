import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginbindings.dart';
import 'package:flutter_application_1/loginview.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => Home(), binding: HomeBinding()),
    ],
  ));
}
