import 'package:flutter/material.dart';

class personalForm extends StatelessWidget {
  const personalForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          _inputField("Parentesco:"),
          _inputField("Nombre Completo:"),
          _inputField("Celular:"),
          _inputField("Convencional:"),
          _inputField("Direccion:"),
          _inputField("Provincia:"),
          _inputField("Ciudad:"),
        ],
      ),
    );
  }
}

Widget _inputField(String lblTxt) {
  return Container(
    padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: 100, child: Text(lblTxt, textAlign: TextAlign.left)),
        Expanded(
          child: ListTile(
            title: cInputForm(),
          ),
        ),
      ],
    ),
  );
}

class cInputForm extends StatelessWidget {
  const cInputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: new InputDecoration(
              labelText: ''
            ),
          )
        ],
      ),
    );
  }
}