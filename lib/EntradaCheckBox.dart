import 'package:flutter/material.dart';

class Entradacheckbox extends StatefulWidget {
  const Entradacheckbox({super.key});

  @override
  State<Entradacheckbox> createState() => _EntradacheckboxState();
}

class _EntradacheckboxState extends State<Entradacheckbox> {
  var _comidasBr = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              secondary: Icon(Icons.add_box),
              activeColor: Colors.green.shade200,
              //  selected: true,
              subtitle: Text("Comidas regionais BR"),
              value: _comidasBr,
              onChanged: (bool? valor) {
                setState(() {
                  _comidasBr = valor ?? false;
                });
              },
            ),
            TextButton(
              onPressed: () {
                print("Comidas Brasileiras:" + _comidasBr.toString());
              },
              child: Text("Enviar"),
              style: TextButton.styleFrom(backgroundColor: Colors.amberAccent),
            ),
          ],
        ),
      ),
    );
  }
}
