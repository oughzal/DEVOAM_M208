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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.android,
            color: Colors.white,
            opticalSize: 3.5,
          ),
          title: Text(
            "First App",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: 200,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Text("Item $index");
            }),
      ),
    );
  }
}
