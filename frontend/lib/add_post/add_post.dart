import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_post_controller.dart';

class AddArticlePage extends GetView<AddArticleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter une annonce'),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(
                    controller: controller.namePlante,
                    decoration: const InputDecoration(
                      labelText: 'Nom de la plante',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: controller.descripton,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: controller.localisation,
                    decoration: const InputDecoration(
                      labelText: 'Localisation',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: controller.image,
                    decoration: const InputDecoration(
                      labelText: 'Lien de l\'image',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await controller.createPostPlante();
            },
            child: const Text('Ajouter'),
          ),
        ],
      ),
    );
  }
}
