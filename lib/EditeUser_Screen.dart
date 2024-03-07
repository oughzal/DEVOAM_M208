import 'package:flutter/material.dart';

class EditeUser extends StatefulWidget {
  const EditeUser({super.key});

  @override
  State<EditeUser> createState() => _EditeUserState();
}

class _EditeUserState extends State<EditeUser> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: const Text(
            "Sqlite CRUD",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(child: Text("Edite", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
