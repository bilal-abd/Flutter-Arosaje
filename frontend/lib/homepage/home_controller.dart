import 'package:get/get.dart';

import '../model/user.dart';
import 'package:flutter/widgets.dart';

class HomeController extends GetxController {
  late User user;

  void onInit() {
    super.onInit();
    final Map<String, dynamic> args = Get.arguments;
    user = args["user"] as User;
  }
}
