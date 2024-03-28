import 'package:flutter/material.dart';
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.home , color: Colors.white,),
          title: Text("Screen2", style: TextStyle(color: Colors.white),),
        ),
        body: Center(
            child: ElevatedButton(
              onPressed: () {  },
              child: Text("Ecran 1"),)
        ),
      ),
    );
  }
}
