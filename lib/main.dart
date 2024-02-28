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
  String? _categorie = "Enfant";
  bool _checked = false;
  double _total=0.0;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EFF 2023",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.cloud_circle),
          title: Text("Paiment club"),
          actions: [
            Icon(Icons.menu)
          ],
        ),
        drawer: Drawer(
          child: Text("Drawer"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Nombre de séance par semaine : "),
                  Flexible(
                      child: TextField(
                        controller: _controller,
                      keyboardType: TextInputType.number,

                  )),
                ],
              ),
              Row(
                children: [
                  Text("Catégorie : "),
                  Flexible(
                    child: RadioListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Enfant"),
                        value: "Enfant",
                        groupValue: _categorie,
                        onChanged: (value) {
                          setState(() {
                            _categorie = value!;
                          });
                        }),
                  ),
                  Flexible(
                    child: RadioListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Adult"),
                        value: "Adulte",
                        groupValue: _categorie,
                        onChanged: (value) {
                          setState(() {
                            _categorie = value!;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Premium"),
                  Checkbox(
                      value: _checked,
                      onChanged: (value) {
                        setState(() {
                          _checked = value!;
                        });
                      }),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    int nbHours = int.tryParse(_controller.text.toString()) ?? 0;
                    double prix = (_categorie! == "Enfant")? 15.0 : 30.0;
                    double prixTotal = 4*nbHours*prix;
                    if(_checked==true) prixTotal +=200;
                    setState(() {
                      _total = prixTotal;
                    });
                  },
                  child: Text("Calculer")
              ),
              Text("Le montant mensuel à payer : $_total")
            ],
          ),
        ),
      ),
    );
  }
}
