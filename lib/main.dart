import 'package:flutter/material.dart';

void main() {
  runApp(const EFF());
}

class EFF extends StatefulWidget {
  const EFF({super.key});

  @override
  State<EFF> createState() => _EFFState();
}

class _EFFState extends State<EFF> {
  String? _categorie;
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EFF 2023",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Paiment club"),
        ),
        body: Column(
          children: [
            Row(
              children: [Text("Nombre séance par semaine"), TextField()],
            ),
            Row(
              children: [
                Text("Categorie"),
                RadioListTile(
                    value: "Enfant",
                    groupValue: _categorie,
                    onChanged: (value) {}),
                RadioListTile(
                    value: "Adult",
                    groupValue: _categorie,
                    onChanged: (value) {}),
              ],
            ),
            CheckboxListTile(value: _checked, onChanged: (value) {}, title: Text("Premium"),),
            MaterialButton(
              child: Text("Calculer"),
                onPressed: (){})
          ],
        ),
      ),
    );
  }
}
