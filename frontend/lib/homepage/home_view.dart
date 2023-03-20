import 'package:flutter/material.dart';
import 'package:flutter_application_1/comment/comment_bindings.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comment/comment_view.dart';
import 'home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/addPost', arguments: {"user": controller.user});
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: const Color(0xFFD6FFCC),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.onInit();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(width: 90, child: SvgPicture.asset()),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.planteList.length,
                  itemBuilder: (context, index) {
                    final plante = controller.planteList[index];
                    return Column(
                      children: [
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
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 300,
                          child: Image.network(
                            plante.image ?? "",
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.image_not_supported,
                                size: 200,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 24,
                          child: GestureDetector(
                            child: Icon(Icons.comment),
                            onTap: () {
                              Get.toNamed('/comment', arguments: {
                                "planteList": plante,
                                "user": controller.user
                              });
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
