// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:bytebank/screens/frame.dart';
import 'package:flutter/material.dart';

const _appName = 'Bytebank App';
const _themeColor = Colors.red;

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      theme: ThemeData(
        primarySwatch: _themeColor,
      ),
      home: Scaffold(
        body: TransferenciasPage(),
      ),
    );
  }
}



