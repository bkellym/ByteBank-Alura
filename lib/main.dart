import 'package:flutter/material.dart';

import 'package:byte_bank/enums/tema.dart';
import 'package:byte_bank/screens/transferencia/lista.dart';

void main() => runApp(const BytebankApp());

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Tema.getTema(),
      home: ListaTransferencias(),
    );
  }
}
