import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/homepage/home_view.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';

import 'model/user.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void logidn() async {
    try {
      const String url = "http://10.0.2.2:8000/api/login";
      final body = {"email": email.text, "password": password.text};
      Response response;

      final dio = Dio();

      response = await dio.post(url, data: body);

      if (response.statusCode == 200) {
        final userJson = response.data[0] as Map<String, dynamic>;
        final user = User.fromJson(userJson);
        Get.to(() => Home(), arguments: {
          "user": user,
        });
      } else {
        SnackBar(content: Text("${response.statusCode}"));
      }
    } catch (e) {
      SnackBar(
        content: Text("${e.toString()}"),
      );
      print(e);
    }
  }
}
