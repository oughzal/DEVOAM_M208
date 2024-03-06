import 'package:devm208/MyDrawer.dart';
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
  void _onButtonPress(){
    switch(_currentIndex){
      case 0 : _selected = "Home";break;
      case 1 : _selected = "Edit";break;
      case 2 : _selected = "Settings";break;
    }
    setState(() {

    });
  }

  int _currentIndex =0;
  List<String> items = ["Home", "Edite", "Setting"];
  String _selected = "Home";

  void _OnTabBottomItem(int index) {
    String item = items[index];

    setState(() {
      _currentIndex=index;
        _selected=item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Bottom Navigation"),
        ),
        body: Column(
          children: [
            Text("Selected item : $_selected",

            style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
            ElevatedButton(onPressed: _onButtonPress, child: Text("Edite"),
            )
        ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            //const BottomNavigationBarItem(icon: const Icon(Icons.login), label: "Login"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "edit"),

            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex=index;
              _selected = items[index];
            });
          },
          selectedItemColor: Colors.red,
          elevation: 20,
        ),
      ),
    );
  }
}
