import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_post/add_post.dart';
import 'package:flutter_application_1/comment/comment_bindings.dart';
import 'package:flutter_application_1/homepage/home_binding.dart';
import 'package:flutter_application_1/login/loginbindings.dart';
import 'package:flutter_application_1/login/loginview.dart';
import 'package:flutter_application_1/register/register_bindings.dart';
import 'package:flutter_application_1/register/register_view.dart';
import 'package:get/get.dart';

import 'add_post/add_post_bindings.dart';
import 'comment/comment_view.dart';
import 'homepage/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    getPages: [
      GetPage(
          name: '/login', page: () => Loginview(), binding: Loginbindings()),
      GetPage(
          name: '/register',
          page: () => RegisterView(),
          binding: RegisterBinding()),
      GetPage(name: '/home', page: () => Home(), binding: Homebindings()),
      GetPage(
          name: '/comment',
          page: () => PostPage(),
          binding: PostPageBindings()),
      GetPage(
          name: '/addPost',
          page: () => AddArticlePage(),
          binding: AddArticleBindings()),
    ],
  ));
}
