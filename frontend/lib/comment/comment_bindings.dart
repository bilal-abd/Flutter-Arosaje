import 'package:flutter_application_1/comment/comment_controller.dart';
import 'package:flutter_application_1/homepage/home_controller.dart';
import 'package:get/get.dart';

class PostPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostPageController());
  }
}
