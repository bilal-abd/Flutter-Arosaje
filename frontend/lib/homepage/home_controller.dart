import 'package:get/get.dart';

import '../model/user.dart';
import 'package:flutter/widgets.dart';

class HomeController extends GetxController {
  User? user = User.empty();

  void onInit() {
    super.onInit();
    final args = Get.arguments;
    if (args != null && mounted) {
      user = args as User;
    }
  }
}
