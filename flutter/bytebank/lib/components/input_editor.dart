
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final String? ctrlTitulo;
  final String? ctrlHint;
  final TextEditingController? ctrlController;
  final IconData? icon;

  Editor({this.ctrlController, this.ctrlTitulo, this.ctrlHint, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          labelText: ctrlTitulo,
          hintText: ctrlHint,
          icon: Icon(icon),
        ),
        keyboardType: TextInputType.number,
        controller: ctrlController,
      ),
    );
  }
}