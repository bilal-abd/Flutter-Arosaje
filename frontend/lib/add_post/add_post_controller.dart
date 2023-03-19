import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;

import '../model/user/user.dart';

class AddArticleController extends GetxController {
  TextEditingController namePlante = TextEditingController();
  TextEditingController descripton = TextEditingController();
  TextEditingController localisation = TextEditingController();
  TextEditingController image = TextEditingController();
  late User user;

  void onInit() async {
    final Map<String, dynamic> args = Get.arguments;
    user = args["user"] as User;
    super.onInit();
  }

  Future<void> createPostPlante() async {
    try {
      const String url = "http://10.0.2.2:8000/api/plante";
      final body = {
        "nom_plante": namePlante.text,
        "description": descripton.text,
        "localisation": localisation.text,
        "image": image.text,
        "user_id": user.id,
      };
      Response response;

      final dio = Dio();

      response = await dio.post(url, data: body);

      if (response.statusCode == 200) {
        Get.back();
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
