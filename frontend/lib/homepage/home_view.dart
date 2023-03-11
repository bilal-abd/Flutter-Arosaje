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
                child: Text(controller.user.name ?? ""),
              )
            ],
          ),
        ),
      );
}
