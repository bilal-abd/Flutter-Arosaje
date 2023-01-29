import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage/home_binding.dart';
import 'package:flutter_application_1/loginbindings.dart';
import 'package:flutter_application_1/loginview.dart';
import 'package:flutter_application_1/register/register_bindings.dart';
import 'package:flutter_application_1/register/register_view.dart';
import 'package:get/get.dart';

import 'homepage/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    getPages: [
      GetPage(
          name: '/login', page: () => Loginview(), binding: Loginbindings()),
      GetPage(
          name: '/register',
          page: () => RegisterView(),
          binding: RegisterBinding()),
      GetPage(name: '/home', page: () => Home(), binding: Homebindings()),
    ],
  ));
}
