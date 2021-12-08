import 'package:byte_bank/enums/datas.dart';
import 'package:flutter/material.dart';

import 'package:byte_bank/enums/tema.dart';
import 'package:byte_bank/models/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  const ItemTransferencia({Key? key, required this.transferencia})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Column(
        children: [
          Text(
            transferencia.data.day.toString(),
            style: TextStyle(
              color: Tema.getPrimaryColor(),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            DatasEnums.getMesAbreviado(transferencia.data),
            style: TextStyle(
              color: Tema.getPrimaryColor(),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
      title: Text("R\u0024 " + transferencia.valor.toStringAsFixed(2)),
      subtitle: Text(transferencia.numeroConta.toString()),
    ));
  }
}
