import 'dart:ffi';

import 'package:devm208/FormWidgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "First App",
        color: Colors.black,
        home: Scaffold(
          appBar: AppBar(
            elevation: 4,
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            title: Text(
              "My App",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          body: FormWidgets(),
        ));
  }
}
