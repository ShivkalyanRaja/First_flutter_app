// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/util/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: " Enter Username", labelText: "  Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: " Enter Password", labelText: "  Password"),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 17),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
