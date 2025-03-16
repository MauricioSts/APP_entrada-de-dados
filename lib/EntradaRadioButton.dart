import 'package:flutter/material.dart';

class Entradaradiobutton extends StatefulWidget {
  const Entradaradiobutton({super.key});

  @override
  State<Entradaradiobutton> createState() => _EntradaradiobuttonState();
}

class _EntradaradiobuttonState extends State<Entradaradiobutton> {
  String? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Container(
        child: Column(
          children: [
            RadioListTile(
              title: Text("Masculino"),
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            TextButton(
              onPressed: () {
                print(_escolhaUsuario);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              child: Text("SALVAR", style: TextStyle(color: Colors.black87)),
            ),
          ],
        ),
      ),
    );
  }
}
