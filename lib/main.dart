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

  @override
  Widget build(BuildContext context) {
    controller.text = "Test";
    String _selected = "A";
    void _setSelected(String? value){
      print(value);
      setState(() {_selected = value!!;});
    }
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
            ListTile(
                title: Text("A"),
                leading: Radio(
                  value: "A",
                  groupValue:_selected, onChanged:_setSelected
                )
               ),
            ListTile(
              title: Text("B"),
                leading: Radio(
                    value: "B",
                    groupValue:_selected, onChanged:_setSelected
                )
            ),
          ]),
        ));
  }
}
