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
                child: const Image(image: AssetImage('assets/botanic.png')),
              ),
              Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
}
