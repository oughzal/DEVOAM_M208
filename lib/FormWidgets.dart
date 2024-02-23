import "package:flutter/material.dart";
class FormWidgets extends StatefulWidget {
  const FormWidgets({super.key});

  @override
  State<FormWidgets> createState() => _FormWidgetsState();
}

class _FormWidgetsState extends State<FormWidgets> {
  int _var = 0;
  String text = "";
  TextEditingController controller = TextEditingController();
  String? _selected = "A";
  bool? checked = false;

  void buttonOnPressed(){
    print("Button pressed");
    String text = controller.text!;
    String admin = (checked!)? "Admis" : "non Admis";
    String option = _selected!;
    print("text : $text\nadmin : $admin\noption:$option");
  }
  void _setSelected(String? value) {
    print(value);
    setState(() {
      _selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
          textColor: Colors.white,
          onPressed: buttonOnPressed,
          child: const Text("Calculer")
      )
    ]);
  }
}
