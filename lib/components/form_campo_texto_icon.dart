import 'package:byte_bank/enums/tema.dart';
import 'package:flutter/material.dart';

class CampoTextoIcon extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  const CampoTextoIcon(
      {Key? key,
      required this.controlador,
      required this.rotulo,
      required this.dica,
      required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: const TextStyle(fontSize: 18.0),
        decoration: InputDecoration(
          icon: Icon(
            icone,
            color: Tema.getPrimaryColor(),
          ),
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
