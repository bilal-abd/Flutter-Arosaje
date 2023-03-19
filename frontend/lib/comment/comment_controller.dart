import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/comment/commentaire.dart';
import 'package:flutter_application_1/model/plante_list/plante.dart';
import 'package:get/get.dart' hide Response;

class PostPageController extends GetxController {
  late Plante planteList;
  final String username = "";
  final String userProfileImageUrl = "";
  final String postImageUrl = "";
  final RxList<String> comments = <String>[].obs;
  final TextEditingController commentController = TextEditingController();
  final commentList = <Commentaire>[].obs;

  void onInit() async {
    final Map<String, dynamic> args = Get.arguments;
    planteList = args["planteList"] as Plante;
    await fetchComments();
    super.onInit();
  }

  Future<void> fetchComments() async {
    try {
      Response response = await Dio().get('http://10.0.2.2:8000/api/conseil');
      List<dynamic> data = response.data;
      commentList.value =
          data.map((comment) => Commentaire.fromJson(comment)).toList();
    } catch (error) {
      print(error);
    }
  }
}
