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
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      title: "Title",
      home: Scaffold(
        appBar: AppBar(),
        body: null,
        drawer: Drawer(
          child: ListView(
            children:const <Widget> [
              DrawerHeader(decoration: BoxDecoration(
                color:Colors.blue
              ), child: Center(child: Text("DEVOAM201",
                style: TextStyle(color: Colors.white,fontSize: 30),
              ),),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title:Text("Paramètres"),
                subtitle: Text("paramètres de votre application"),
              ),
              ListTile(
                leading: const Icon(Icons.login),
                title:Text("Connexion"),
                subtitle: Text("accèder à votre application"),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title:Text("Paramètres"),
                subtitle: Text("paramètres de votre application"),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title:Text("Paramètres"),
                subtitle: Text("paramètres de votre application"),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title:Text("Paramètres"),
                subtitle: Text("paramètres de votre application"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
