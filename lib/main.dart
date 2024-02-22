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
  int _var = 0;
  String text = "";
  TextEditingController controller = TextEditingController();
  String? _selected = "A";
  bool? checked = false;

  void buttonOnPressed(){
  print("Button pressed");
  }

  void _setSelected(String? value) {
    print(value);
    setState(() {
      _selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "First App",
        color: Colors.black,
        home: Scaffold(

          appBar: AppBar(
            elevation: 4,
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            title: Text(
              "$_var",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          body: Column(children: [

            RadioListTile(
                title: Text("A"),
                value: "A",
                groupValue: _selected,
                onChanged:_setSelected),
            RadioListTile(
                title: Text("B"),
                value: "B",
                groupValue: _selected,
                onChanged:_setSelected),
            CheckboxListTile(
                title: Text("Admis"),
                value: checked,
                onChanged: (chk) {
                  setState(() {
                    checked = chk;
                    print(checked);
                  });
                }),
            TextField(
              controller: controller,
            ),
            MaterialButton(
                color: Colors.blue,
                onPressed: buttonOnPressed,
                child: const Text("Calculer")
            )
          ]),
        ));
  }
}
