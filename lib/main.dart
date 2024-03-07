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
  final TextEditingController _taille = TextEditingController(); // findById()
  final TextEditingController _poids = TextEditingController();
  final TextEditingController _temps = TextEditingController();
  String stat ="";
  String _horloge = "00:00:00";


  /**
   * Méthode pour le bouton calculer IMC
   */
  void _onPressIMC(){
    double t = double.tryParse(_taille.text.toString()) ?? 0;
    double p = double.tryParse(_poids.text.toString()) ?? 0;
    t= t / 100;
    final double imc = p/(t*t);

    if(imc <18.5){
      stat="Sous-poids";
    }
    else if(imc <25){
      stat="Normal";
    }
    else{
      stat="Sur-poids";

    }
    setState(() {
      stat = "${imc.toStringAsFixed(2)} ($stat)";
    });
  }

  /**
   * Méthode pour le bouton Convertir hh:mm:ss
   */
  void _onPressConvert(){
    int t = int.tryParse(_temps.text) ?? 0;
    int h = t ~/ 3600;
    t = t % 3600;
    int m = t ~/60;
    int s = t % 60;
    setState(() {
      _horloge ="${h.toString().padLeft(2,"0")}:${m.toString().padLeft(2,"0")}:${s.toString().padLeft(2,"0")}";
    });

  }
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
                onPressed: _onPressIMC, // appler la méthode sans ()
                child: Text("Calculer IMC")),
            const SizedBox(
              height: 20,
            ),
            Text("$stat",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
                onPressed: _onPressConvert,
                child: Text("Convertir en HH:MM:SS")),
            const SizedBox(
              height: 20,
            ),
            Text("$_horloge",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
