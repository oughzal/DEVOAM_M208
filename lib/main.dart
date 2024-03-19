import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'User.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  List<User> users=[];

  int _position = -1;

  TextEditingController nomController = TextEditingController() ;
  TextEditingController prenomController = TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.home , color: Colors.white,),
          title: Text("My App", style: TextStyle(color: Colors.white),),
        ),
        body: Column(
          children: [
            TextField(controller: nomController,
            decoration: InputDecoration(
              labelText: "Le nom" ,
            ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(controller: prenomController,
              decoration: InputDecoration(
                labelText: "Le prenom" ,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            ElevatedButton(onPressed: (){
              User user= User(nom : nomController.text.toString(),prenom: prenomController.text.toString());
              if(_position == -1 ){
                setState(() {
                  users.add(user);
                });
              }else{
                setState(() {
                  users[_position]= user;
                });

              }
              _position = -1;

            }, child: const Text("Save"),),
            SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                  itemBuilder: (context,position){
                    User user = users[position];
                    return Row(
                      children: [
                        Text("${user.nom} ${user.prenom}"),
                        ElevatedButton(onPressed: (){
                          _position = position;
                              setState(() {
                            nomController.text = users[position].nom;
                            prenomController.text = users[position].prenom;

                          });

                        }, child: Icon(Icons.edit)),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            users.removeAt(position);
                          });
                        }, child: Icon(Icons.delete)),
                      ],
                    );
                  }
              ),
            )
          ],
        ) ,
      ),
    );
  }
}
