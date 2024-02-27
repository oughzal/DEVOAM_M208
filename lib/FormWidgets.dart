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
  bool checked = false;
  TextEditingController controller2 = TextEditingController();

  String _selectedValue = 'Option 1';
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

  void buttonOnPressed() {
    print("Button pressed");
    String text = controller.text!;
    String admin = (checked!) ? "Admis" : "non Admis";
    String option = _selected!;
    print("text : $text\nadmin : $admin\noption:$option");
    String value = controller2.text;
    setState(() {

    });
  }

  void _setSelected(String? value) {
    print(value);
    setState(() {
      _selected = value;
    });
  }

  void _dropdawOnChanged(String? value) {
    setState(() {
      _selectedValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
       controller: controller2,
      ),
      RadioListTile(
          title: Text("A"),
          value: "A",
          groupValue: _selected,
          onChanged: _setSelected),
      RadioListTile(
          title: Text("B"),
          value: "B",
          groupValue: _selected,
          onChanged: _setSelected),
      CheckboxListTile(
          title: Text("Admis"),
          value: checked,
          onChanged: (chk) {
            setState(() {
              checked = chk!;
              print(checked);
            });
          }),
      TextField(
        controller: controller,
      ),
      DropdownButton<String>(

        value: _selectedValue,
        items: _options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: _dropdawOnChanged,
      ),
      SwitchListTile(
          title: Text("Admis"),
          value: checked,
          onChanged: (chk) {
            setState(() {
              checked = chk;
              print(checked);
            });
          }),
      MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: buttonOnPressed,
          child: const Text("Calculer")),
      Text("${controller2.text}")
    ]);
  }
}
