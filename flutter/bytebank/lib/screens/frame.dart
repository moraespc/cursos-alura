
import 'package:flutter/material.dart';

import 'lista.dart';

const _appBarName = 'Lista de Transferencias';

class TransferenciasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarName),
      ),
      body: ListaTransferencias(),
    );
  }
}