import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: IconButton(
              icon: Icon(
                _isFavorited ? Icons.favorite : Icons.favorite_border,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _isFavorited = !_isFavorited;
                });
              },
            ),
            title: const Text("My App",
                style: TextStyle(color: Colors.white, fontSize: 20)
            )
        ),
        body: const Center(
          child: Column(
            children: [
              Text("DEV101",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text("DEVOAM201",
                  style: TextStyle(color: Colors.blue, fontSize: 30))
            ],
          ),
        ),
      ),
    );
  }
}
