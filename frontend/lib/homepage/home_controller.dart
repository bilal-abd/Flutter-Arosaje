import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import '../model/plante_list/plante.dart';
import '../model/user/user.dart';
import 'package:flutter/widgets.dart';

class HomeController extends GetxController {
  late User user;
  final planteList = <Plante>[].obs;
  final RxStatus status = RxStatus.loading();
  void onInit() async {
    super.onInit();
    final Map<String, dynamic> args = Get.arguments;
    user = args["user"] as User;
    await fetchPlantes();
  }

  Future<void> fetchPlantes() async {
    try {
      status.isLoading;
      Response response = await Dio().get('http://10.0.2.2:8000/api/plante');
      List<dynamic> data = response.data;
      planteList.value = data.map((plant) => Plante.fromJson(plant)).toList();
      status.isSuccess;
    } catch (error) {
      status.isError;
      print(error);
    }
  }
}
