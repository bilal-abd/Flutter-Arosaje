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
                  backgroundImage: NetworkImage(controller.userProfileImageUrl),
                ),
                const SizedBox(width: 16),
                Text(
                  controller.username,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Image.network(
                "https://www.footmercato.net/build/images/player-covers/cristiano-ronaldo.352c95f5.jpg"),
            const SizedBox(height: 16),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.comments.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundImage:
                          NetworkImage(controller.userProfileImageUrl),
                    ),
                    title: Text(
                      controller.username,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(controller.comments[index]),
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
                    onPressed: () => controller.addComment(),
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
