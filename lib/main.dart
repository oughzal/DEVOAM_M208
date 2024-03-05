import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const EFF());
}

class EFF extends StatefulWidget {
  const EFF({super.key});

  @override
  State<EFF> createState() => _EFFState();
}

class _EFFState extends State<EFF> {
  String? _Option = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Menu Flutter",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(
            Icons.cloud_circle,
            color: Colors.white,
          ),
          title: const Text(
            "Menu Flutter",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            PopupMenuButton(
              offset: const Offset(0,50),
              onSelected: (String value){
                setState(() {
                  _Option = value!;
                });
              },
                icon: const Icon(Icons.more_vert, color: Colors.white,),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                   value: "Option 1",
                   child: Text("Option 1"),
                  ),   const PopupMenuItem<String>(
                   value: "Option 2",
                   child: Text("Option 2"),
                  ),   const PopupMenuItem<String>(
                   value: "Option 3",
                   child: Text("Option 3"),
                  ),   const PopupMenuItem<String>(
                   value: "Option 4",
                   child: Text("Option 4"),
                  ),

                ]
            )
          ],
        ),
        body: Center(
          child:Text(
            "$_Option",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
