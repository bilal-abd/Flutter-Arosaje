import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(context) => Scaffold(
        backgroundColor: Color(0xFFD6FFCC),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: double.infinity,
                  // child: SvgPicture.asset(
                  //   'svg/bottanic_home.svg',
                  //   width: 100,
                  //   height: 100,
                  // ),
                  child: Obx(() {
                    final plantes = controller.planteList;
                    return ListView.builder(
                      itemCount: plantes.length,
                      itemBuilder: (context, index) {
                        final plante = plantes[index];
                        return ListTile(
                          title: Text(plante.nomPlante ?? ""),
                          subtitle: Text(plante.description ?? ""),
                          trailing: Text(plante.image ?? ""),
                        );
                      },
                    );
                  }))
            ],
          ),
        ),
      );
}
