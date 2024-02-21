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
  String text="";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    controller.text = "Test";
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "First App",
        home: Scaffold(
          backgroundColor: Colors.green,
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
          body: Column(
              children:[
                TextField(controller: controller ,)
                ,Text("${controller.text}",
                style:TextStyle(
                  color: Color.fromARGB(0xff, 0xff, 0, 0),
                  fontSize: 40,
                  fontWeight: FontWeight.bold

                ) ,
              ),
                IconButton(onPressed: (){
                  setState(() {  });

                  print(_var++);


                }, icon: Icon(Icons.run_circle))
    ]

          ),
        ));
  }
}
