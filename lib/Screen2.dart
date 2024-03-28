import 'package:flutter/material.dart';

import 'main.dart';
class Screen2 extends StatefulWidget {
  final String name;

  const Screen2({super.key,required this.name});

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
          title: Text("${widget.name}", style: TextStyle(color: Colors.white),),
        ),
        body: Center(
            child: Builder(builder: (context){
              return ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const FirstApp()));

                },
                child: Text("Ecran 1"),);
            })
        ),
      ),
    );
  }
}
