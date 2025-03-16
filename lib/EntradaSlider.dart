import 'package:flutter/material.dart';

class Entradaslider extends StatefulWidget {
  const Entradaslider({super.key});

  @override
  State<Entradaslider> createState() => _EntradasliderState();
}

class _EntradasliderState extends State<Entradaslider> {
  double _slides = 5;
  String _labelValor = "Selecione um valor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(32)),
            Slider(
              min: 0,
              max: 10,
              value: _slides,
              label: _labelValor,
              divisions: 5,
              activeColor: Colors.amberAccent,
              inactiveColor: Colors.black,
              onChanged: (double novoValor) {
                setState(() {
                  _slides = novoValor;
                  _labelValor = novoValor.toString();
                });
              },
            ),
            TextButton(
              onPressed: () {
                print(_slides);
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
