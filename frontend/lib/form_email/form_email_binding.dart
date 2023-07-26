import 'package:get/get.dart';

import 'form_email_controller.dart';

class FormEmailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormEmailController());
  }
}
