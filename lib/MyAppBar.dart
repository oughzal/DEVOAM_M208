import 'package:flutter/material.dart';
class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      leading: Icon(Icons.home),
      title: Text("My App Bar"),
      actions: [Icon(Icons.more_vert)],
    );
  }
}
