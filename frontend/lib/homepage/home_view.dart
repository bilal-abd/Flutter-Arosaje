import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6FFCC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: controller.planteList.length,
                itemBuilder: (context, index) {
                  final plante = controller.planteList[index];
                  return ListTile(
                    title: Text(plante.nomPlante ?? ""),
                    subtitle: Text(plante.localisation ?? ""),
                    leading: Image.network(plante.image ?? ""),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
