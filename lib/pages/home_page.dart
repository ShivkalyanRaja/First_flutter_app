import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "codepur";

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color.fromARGB(110, 168, 203, 12),
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter at $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
