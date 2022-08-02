

import 'package:flutter/material.dart';

import '../components/input_editor.dart';
import '../models/transferencia.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia>{
  final TextEditingController _ctrlNroConta = TextEditingController();
  final TextEditingController _ctrlValorTransf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Nova transferencia')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                  ctrlController: _ctrlNroConta,
                  ctrlTitulo: 'Numero da conta',
                  ctrlHint: '0000',
                  icon: Icons.people),
              Editor(
                  ctrlController: _ctrlValorTransf,
                  ctrlTitulo: 'Valor',
                  ctrlHint: '0.00',
                  icon: Icons.monetization_on_outlined),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text('Transferir'),
                  onPressed: () => _criaTransferencia(context),
                ),
              )
            ],
          ),
        ));
  }

  void _criaTransferencia(BuildContext context) {
    final int? nroConta = int.tryParse(_ctrlNroConta.text);
    final double? valor = double.tryParse(_ctrlValorTransf.text);

    if (nroConta != null && valor != null) {
      final newTransf = Transferencia(valor, nroConta);
      Navigator.pop(context, newTransf);
    }
  }
}