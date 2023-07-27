import 'package:flutter_application_1/homepage/home_controller.dart';
import 'package:flutter_application_1/login/logincontroller.dart';
import 'package:get/get.dart';

class Loginbindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => HomeController());
  }
}
