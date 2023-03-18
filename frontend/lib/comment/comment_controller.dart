import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPageController extends GetxController {
  final String username = "";
  final String userProfileImageUrl = "";
  final String postImageUrl = "";
  final RxList<String> comments = <String>[].obs;
  final TextEditingController commentController = TextEditingController();

  void onInit() async {
    final Map<String, dynamic> args = Get.arguments;
    // user = args["user"] as User;
    super.onInit();
  }

  void addComment() {
    comments.add(commentController.text);
    commentController.clear();
  }
}
