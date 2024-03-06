import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
      ),
    );
  }
}
