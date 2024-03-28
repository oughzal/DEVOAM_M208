import 'package:flutter/material.dart';

import 'Screen2.dart';

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
      debugShowCheckedModeBanner: false,
      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.home , color: Colors.white,),
          title: Text("Screen1", style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () { 
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Screen2()));
            },
          child: Text("Ecran 2"))
        ),
      ),
    );
  }
}
