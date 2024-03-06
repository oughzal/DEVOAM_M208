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
  int _currentIndex = 0;
  List<String> items = ["Home", "Edite", "Setting"];
  String _selected = "Home";
  void _OnTabBottomItem(int index) {
    String item = items[index];

    setState(() {
        _currentIndex = index;
        _selected=items[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation"),
        ),
        body: Center(
          child: Text("Selected item : $_selected",
            style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
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
          onTap: _OnTabBottomItem,
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
