import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;

import '../model/user.dart';
import 'package:flutter/widgets.dart';

class HomeController extends GetxController {
  late User user;
  TextEditingController namePlante = TextEditingController();
  TextEditingController cheminPlante = TextEditingController();
  TextEditingController caracteristiques = TextEditingController();
  TextEditingController descripton = TextEditingController();
  TextEditingController localisation = TextEditingController();
  TextEditingController image = TextEditingController();

  void onInit() {
    super.onInit();
    final Map<String, dynamic> args = Get.arguments;
    user = args["user"] as User;
  }

  void createPostPlante() async {
    try {
      const String url = "http://10.0.2.2:8000/api/plante";
      final body = {
        "nom_plante": namePlante.text,
        "chemin_plante": cheminPlante.text,
        "caracteristiques": caracteristiques.text,
        "description": descripton.text,
        "localisation": localisation.text,
        "id_type": 1,
        "image": image.text,
        "user_id": 1
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
