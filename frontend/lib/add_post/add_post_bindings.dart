import 'package:flutter_application_1/add_post/add_post_controller.dart';
import 'package:flutter_application_1/comment/comment_controller.dart';
import 'package:flutter_application_1/homepage/home_controller.dart';
import 'package:get/get.dart';

class AddArticleBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddArticleController());
  }
}
