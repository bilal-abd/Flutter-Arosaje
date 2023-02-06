import 'package:flutter/material.dart';
import 'package:flutter_application_1/logincontroller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginview extends GetView<LoginController> {
  @override
  Widget build(context) => Scaffold(
        backgroundColor: Color(0xFFD6FFCC),
        body: Padding(
          padding: EdgeInsets.only(top: 230),
          child: Column(
            children: [
              Center(
                  child: Text(
                "Sign in",
                style: GoogleFonts.lexendDeca(
                    fontStyle: FontStyle.normal,
                    color: Color(0xff224957),
                    fontSize: 64),
              )),
              Form(
                  child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
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
                          fillColor: Color(0xff224957)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
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
                          fillColor: Color(0xff224957)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: Text(
                        "Login",
                        style: GoogleFonts.lexendDeca(
                            fontStyle: FontStyle.normal,
                            color: Color(0xff224957),
                            fontSize: 16),
                        selectionColor: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff20DF7F)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff20DF7F)),
                    ),
                    onPressed: () {},
                  )
                ],
              ))
            ],
          ),
        ),
      );
}
