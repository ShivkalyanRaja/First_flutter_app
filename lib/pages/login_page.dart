// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/util/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
              Text(
                "Welcome $name ",
                style: const TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: " Enter Username", labelText: "  Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                        ;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: " Enter Password", labelText: "  Password"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 70 : 140,
                          height: changeButton ? 70 : 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: changeButton
                                ? const Color.fromARGB(255, 0, 167, 6)
                                : Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: changeButton
                              ? const Icon(Icons.done, color: Colors.white)
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                )
                          // ElevatedButton(
                          //     onPressed: () {
                          //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //     },
                          //     style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                          //     child: const Text(
                          //       "Login",
                          //       style: TextStyle(fontSize: 17),
                          //     ))
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
