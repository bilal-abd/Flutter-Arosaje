import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/comment/commentaire.dart';
import 'package:flutter_application_1/model/plante_list/plante.dart';
import 'package:get/get.dart' hide Response;

import '../model/user/user.dart';

class PostPageController extends GetxController {
  late User user;
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
    user = args["user"] as User;
    await fetchComments();
    super.onInit();
  }

  Future<void> fetchComments() async {
    try {
      Response response =
          await Dio().get('http://10.0.2.2:8000/api/conseil/${planteList.id}');
      List<dynamic> data = response.data;
      commentList.value =
          data.map((comment) => Commentaire.fromJson(comment)).toList();
    } catch (error) {
      print(error);
    }
  }

  Future<void> createComment() async {
    try {
      String url = "http://10.0.2.2:8000/api/conseil/${planteList.id}";
      final body = {
        "user_id": user.id,
        "contenuConseil": commentController.text,
      };
      Response response;

      final dio = Dio();

      response = await dio.post(url, data: body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        onInit();
        commentController.clear();
      } else {
        SnackBar(content: Text("${response.statusCode}"));
      }
    } catch (e) {
      SnackBar(
        content: Text("${e.toString()}"),
      );
      print(e);
    }
  }
}
