import 'package:flutter/material.dart';
import 'package:flutter_application_1/logincontroller.dart';
import 'package:flutter_application_1/repo/login_repository.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginview extends GetView<LoginController> {
  @override
  Widget build(context) => Scaffold(
        backgroundColor: const Color(0xFFD6FFCC),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 230),
            child: Expanded(
              child: Column(
                children: [
                  Text(
                    "Sign in",
                    style: GoogleFonts.lexendDeca(
                        fontStyle: FontStyle.normal,
                        color: const Color(0xff224957),
                        fontSize: 64),
                  ),
                  Form(
                      child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entrez une adresse mail';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          controller: controller.email,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: GoogleFonts.lexendDeca(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xff224957)),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 30)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entrez un mot de passe';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          controller: controller.password,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: GoogleFonts.lexendDeca(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xff224957)),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 15)),
                      ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Text(
                            "Login",
                            style: GoogleFonts.lexendDeca(
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff224957),
                                fontSize: 16),
                            selectionColor: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff20DF7F)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff20DF7F)),
                        ),
                        onPressed: () {
                          controller.logidn();
                        },
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      );
}
