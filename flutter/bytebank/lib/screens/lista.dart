
import 'package:flutter/material.dart';
import '../models/transferencia.dart';
import 'formulario.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List.empty(growable: true);

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencias>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(24.0),
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          final Future future = Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return FormularioTransferencia();
          }));
          future.then((newTransf){
            setState(() {
              widget._transferencias.add(newTransf);
            });
          });
        },
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: const Icon(Icons.monetization_on),
          title: Text(_transferencia.valor.toString()),
          subtitle: Text(_transferencia.nroConta.toString()),
        ));
  }
}