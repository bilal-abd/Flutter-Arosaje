import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'comment_controller.dart';

class PostPage extends GetView<PostPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                const SizedBox(width: 16),
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      NetworkImage(controller.planteList.photoProfil ?? ""),
                ),
                const SizedBox(width: 16),
                Text(
                  " ${controller.planteList.prenomUtilisateur} ${controller.planteList.nameUtilisateur}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Image.network(
              controller.planteList.image ?? "",
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.image_not_supported,
                  size: 300,
                );
              },
            ),
            Text(
              "Description : ${controller.planteList.description}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Nom de la plante : ${controller.planteList.nomPlante}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.commentList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          controller.commentList[index].photoProfil ?? ''),
                    ),
                    title: Text(
                      "${controller.commentList[index].prenomUtilisateur} ${controller.commentList[index].nameUtilisateur}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        controller.commentList[index].contenuConseil ?? ''),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller.commentController,
                      decoration: const InputDecoration(
                        hintText: 'Ajouter un...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      await controller.createComment();
                    },
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
