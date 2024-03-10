import 'package:devm208/EditeUser_Screen.dart';
import 'package:devm208/app_bar.dart';
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
  void _onFabPress() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const EditeUser()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Title",
      home: Scaffold(
        appBar: MyAppBar(),
        body: null,
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const EditeUser()));
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            );
          }
        ),
      ),
    );
  }
}
