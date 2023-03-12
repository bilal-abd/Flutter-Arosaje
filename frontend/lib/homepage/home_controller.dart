import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../model/plante_list/plante.dart';
import '../model/user/user.dart';
import 'package:flutter/widgets.dart';

class HomeController extends GetxController {
  late User user;
  final planteList = <Plante>[].obs;

  void onInit() async {
    super.onInit();
    final Map<String, dynamic> args = Get.arguments;
    user = args["user"] as User;
    await fetchPlantes();
  }

  Future<void> fetchPlantes() async {
    try {
      final response = await Dio().get('http://10.0.2.2:8000/api/plante');
      final data = response.data as List<dynamic>;
      final plantes = data.map((e) => Plante.fromJson(e)).toList();
      planteList.addAll(plantes);
    } catch (e) {
      print(e);
    }
  }
}
