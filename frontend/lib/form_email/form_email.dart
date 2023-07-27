import 'package:flutter/material.dart';
import 'package:flutter_application_1/form_email/form_email_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class FormEmail extends GetView<FormEmailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFD6FFCC),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 51, 177, 20),
          title: const Text('Ajouter une annonce'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextFormField(controller: controller.firstnameController),
            TextFormField(controller: controller.lastnameController),
            TextFormField(controller: controller.emailController)
          ],
        ));
  }
}
