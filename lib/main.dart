import 'dart:ffi';

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
  TextEditingController _taille = TextEditingController(); // findById()
  TextEditingController _poids = TextEditingController();
  TextEditingController _temps = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          title: Text(
            "M202 CC2",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Text(
              "Taille (cm) :",
              textAlign: TextAlign.start,
            ),
            TextField(
              controller: _taille,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Taille en cm",
              ),
            ),
            Text("Poids (kg) :"),
            TextField(
              controller: _poids,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Poids en kg",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  int t = _taille.text.toString() as int;
                },
                child: Text("Calculer IMC")),
            const SizedBox(
              height: 20,
            ),
            Text("21 (normal)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text(
              "Temps en secondes :",
              textAlign: TextAlign.start,
            ),
            TextField(
              controller: _temps,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Temps en secondes",
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text("Convertir en HH:MM:SS")),
            const SizedBox(
              height: 20,
            ),
            Text("00:00:00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
