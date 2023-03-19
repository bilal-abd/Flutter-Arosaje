import 'package:flutter/material.dart';
import 'package:flutter_application_1/comment/comment_bindings.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../comment/comment_view.dart';
import 'home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6FFCC),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.planteList.length,
                    itemBuilder: (context, index) {
                      final plante = controller.planteList[index];
                      return Column(children: [
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const SizedBox(width: 16),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  NetworkImage(plante.photoProfil ?? ""),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              "${plante.prenomUtilisateur} ${plante.nameUtilisateur}",
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 200,
                          child: Image.network(plante.image ?? ""),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 24,
                          child: GestureDetector(
                            child: Icon(Icons.comment),
                            onTap: () {
                              Get.to(() => PostPage(),
                                  binding: PostPageBindings(),
                                  arguments: {"planteList": plante});
                            },
                          ),
                        ),
                      ]);
                    },
                  )),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
