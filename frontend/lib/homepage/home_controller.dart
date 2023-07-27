import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;

import '../model/plante_list/plante.dart';
import '../model/user/user.dart';
import 'package:flutter/widgets.dart';

class HomeController extends GetxController {
  late User user;
  String? token;
  final planteList = <Plante>[].obs;

  void onInit() async {
    final Map<String, dynamic> args = Get.arguments;
    user = args["user"] as User;
    token = args['token'];
    await fetchPlantes();
    super.onInit();
  }

  Future<void> fetchPlantes() async {
    try {
      final dio = Dio();
      dio.options.headers["Authorization"] = "Bearer $token";

      Response response = await dio.get('http://10.0.2.2:8000/api/plante');

      List<dynamic> data = response.data;
      planteList.value = data.map((plant) => Plante.fromJson(plant)).toList();
    } catch (error) {
      print(error);
    }
  }
}
