# Tipos de entrada de dados

## Entrada Switch
Basicamente é um interruptor 

  `SwitchListTile(
     value: _escolhaUsuario,
          title: Text("Deseja receber notificações?"),
            onChanged: (bool? escolha) {
                setState(() {
                  _escolhaUsuario = escolha ?? false;
             )`
## Entrada slider
É um termometro
`slider()`
acompanhado de min e max,  divisions:  e  value:

## RadioButton
`RadioListTile(`
            `  title: Text("Masculino"),`
             ` value: "M",`
               ` groupValue: _escolhaUsuario,  `
              `  onChanged: (String? escolha) {  `
                 ` setState(() {  `
                  `  _escolhaUsuario = escolha;  `
               `   });  `
               ` },  `
             ` ), `

## CheckBox
`CheckboxListTile(
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
            ),`
