import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

import 'add_post_controller.dart';

class AddArticlePage extends GetView<AddArticleController> {
  Future<void> showAlert(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Vos données seront enregistrées !'),
          actions: [
            TextButton(
              child: Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Continuer'),
              onPressed: () async {
                Navigator.of(context).pop();
                await controller.createPostPlante();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6FFCC),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 177, 20),
        title: const Text('Ajouter une annonce'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
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
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 51, 177, 20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: const Text(
                    "Ajouter",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onTap: () async {
                await showAlert(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
