import 'package:flutter/material.dart';

class Entradaswitch extends StatefulWidget {
  const Entradaswitch({super.key});

  @override
  State<Entradaswitch> createState() => _EntradaswitchState();
}

class _EntradaswitchState extends State<Entradaswitch> {
  bool _escolhaUsuario = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              value: _escolhaUsuario,
              title: Text("Deseja receber notificações?"),
              onChanged: (bool? escolha) {
                setState(() {
                  _escolhaUsuario = escolha ?? false;
                });
              },
            ),
            TextButton(
              onPressed: () {
                print(_escolhaUsuario.toString());
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
